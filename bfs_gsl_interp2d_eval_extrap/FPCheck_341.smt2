(declare-fun x1_ack!3597 () (_ BitVec 64))
(declare-fun x0_ack!3601 () (_ BitVec 64))
(declare-fun y0_ack!3598 () (_ BitVec 64))
(declare-fun x_ack!3599 () (_ BitVec 64))
(declare-fun y_ack!3600 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3601) ((_ to_fp 11 53) x1_ack!3597))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3598) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3599) ((_ to_fp 11 53) x0_ack!3601)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3600) ((_ to_fp 11 53) y0_ack!3598)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3597)
                       ((_ to_fp 11 53) x0_ack!3601))
               ((_ to_fp 11 53) x0_ack!3601))
       ((_ to_fp 11 53) x1_ack!3597)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3597)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3597)
                       ((_ to_fp 11 53) x0_ack!3601)))
       ((_ to_fp 11 53) x0_ack!3601)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3600)
                       ((_ to_fp 11 53) y0_ack!3598))
               ((_ to_fp 11 53) y0_ack!3598))
       ((_ to_fp 11 53) y_ack!3600)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3600)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3600)
                       ((_ to_fp 11 53) y0_ack!3598)))
       ((_ to_fp 11 53) y0_ack!3598)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3600)
          ((_ to_fp 11 53) y0_ack!3598))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3598))))

(check-sat)
(exit)
