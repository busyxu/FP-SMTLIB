(declare-fun x1_ack!3381 () (_ BitVec 64))
(declare-fun x0_ack!3385 () (_ BitVec 64))
(declare-fun y0_ack!3382 () (_ BitVec 64))
(declare-fun x_ack!3383 () (_ BitVec 64))
(declare-fun y_ack!3384 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3385) ((_ to_fp 11 53) x1_ack!3381))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3382) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3383) ((_ to_fp 11 53) x0_ack!3385))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3383) ((_ to_fp 11 53) x1_ack!3381))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3384) ((_ to_fp 11 53) y0_ack!3382))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3384) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3381)
                       ((_ to_fp 11 53) x0_ack!3385))
               ((_ to_fp 11 53) x0_ack!3385))
       ((_ to_fp 11 53) x1_ack!3381)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3381)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3381)
                       ((_ to_fp 11 53) x0_ack!3385)))
       ((_ to_fp 11 53) x0_ack!3385)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3382))
               ((_ to_fp 11 53) y0_ack!3382))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3382)))
       ((_ to_fp 11 53) y0_ack!3382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3384)
                       ((_ to_fp 11 53) y0_ack!3382))
               ((_ to_fp 11 53) y0_ack!3382))
       ((_ to_fp 11 53) y_ack!3384)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3384)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3384)
                       ((_ to_fp 11 53) y0_ack!3382)))
       ((_ to_fp 11 53) y0_ack!3382)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3384)
                  ((_ to_fp 11 53) y0_ack!3382))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3382)))))

(check-sat)
(exit)
