(declare-fun x1_ack!3532 () (_ BitVec 64))
(declare-fun x0_ack!3536 () (_ BitVec 64))
(declare-fun y0_ack!3533 () (_ BitVec 64))
(declare-fun x_ack!3534 () (_ BitVec 64))
(declare-fun y_ack!3535 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3536) ((_ to_fp 11 53) x1_ack!3532))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3533) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3534) ((_ to_fp 11 53) x0_ack!3536))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3534) ((_ to_fp 11 53) x1_ack!3532))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3535) ((_ to_fp 11 53) y0_ack!3533))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3535) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3532)
                       ((_ to_fp 11 53) x0_ack!3536))
               ((_ to_fp 11 53) x0_ack!3536))
       ((_ to_fp 11 53) x1_ack!3532)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3532)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3532)
                       ((_ to_fp 11 53) x0_ack!3536)))
       ((_ to_fp 11 53) x0_ack!3536)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3533))
               ((_ to_fp 11 53) y0_ack!3533))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3533)))
       ((_ to_fp 11 53) y0_ack!3533)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3535)
                       ((_ to_fp 11 53) y0_ack!3533))
               ((_ to_fp 11 53) y0_ack!3533))
       ((_ to_fp 11 53) y_ack!3535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3535)
                       ((_ to_fp 11 53) y0_ack!3533)))
       ((_ to_fp 11 53) y0_ack!3533)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3534)
                  ((_ to_fp 11 53) x0_ack!3536))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3532)
                  ((_ to_fp 11 53) x0_ack!3536)))))

(check-sat)
(exit)
