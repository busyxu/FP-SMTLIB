(declare-fun x1_ack!3512 () (_ BitVec 64))
(declare-fun x0_ack!3516 () (_ BitVec 64))
(declare-fun y0_ack!3513 () (_ BitVec 64))
(declare-fun x_ack!3514 () (_ BitVec 64))
(declare-fun y_ack!3515 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3516) ((_ to_fp 11 53) x1_ack!3512))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3513) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3514) ((_ to_fp 11 53) x0_ack!3516))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3514) ((_ to_fp 11 53) x1_ack!3512))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3515) ((_ to_fp 11 53) y0_ack!3513))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3515) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3512)
                       ((_ to_fp 11 53) x0_ack!3516))
               ((_ to_fp 11 53) x0_ack!3516))
       ((_ to_fp 11 53) x1_ack!3512)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3512)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3512)
                       ((_ to_fp 11 53) x0_ack!3516)))
       ((_ to_fp 11 53) x0_ack!3516)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3513))
               ((_ to_fp 11 53) y0_ack!3513))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3513)))
       ((_ to_fp 11 53) y0_ack!3513)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3515)
                       ((_ to_fp 11 53) y0_ack!3513))
               ((_ to_fp 11 53) y0_ack!3513))
       ((_ to_fp 11 53) y_ack!3515)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3515)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3515)
                       ((_ to_fp 11 53) y0_ack!3513)))
       ((_ to_fp 11 53) y0_ack!3513)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3514)
                  ((_ to_fp 11 53) x0_ack!3516))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3512)
                  ((_ to_fp 11 53) x0_ack!3516)))))

(check-sat)
(exit)
