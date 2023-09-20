(declare-fun x1_ack!3622 () (_ BitVec 64))
(declare-fun x0_ack!3626 () (_ BitVec 64))
(declare-fun y0_ack!3623 () (_ BitVec 64))
(declare-fun x_ack!3624 () (_ BitVec 64))
(declare-fun y_ack!3625 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3626) ((_ to_fp 11 53) x1_ack!3622))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3623) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3624) ((_ to_fp 11 53) x0_ack!3626)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3625) ((_ to_fp 11 53) y0_ack!3623)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3622)
                       ((_ to_fp 11 53) x0_ack!3626))
               ((_ to_fp 11 53) x0_ack!3626))
       ((_ to_fp 11 53) x1_ack!3622)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3622)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3622)
                       ((_ to_fp 11 53) x0_ack!3626)))
       ((_ to_fp 11 53) x0_ack!3626)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3625)
                       ((_ to_fp 11 53) y0_ack!3623))
               ((_ to_fp 11 53) y0_ack!3623))
       ((_ to_fp 11 53) y_ack!3625)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3625)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3625)
                       ((_ to_fp 11 53) y0_ack!3623)))
       ((_ to_fp 11 53) y0_ack!3623)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3624)
                  ((_ to_fp 11 53) x0_ack!3626))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3622)
                  ((_ to_fp 11 53) x0_ack!3626)))))

(check-sat)
(exit)
