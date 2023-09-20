(declare-fun x1_ack!3270 () (_ BitVec 64))
(declare-fun x0_ack!3274 () (_ BitVec 64))
(declare-fun y0_ack!3271 () (_ BitVec 64))
(declare-fun x_ack!3272 () (_ BitVec 64))
(declare-fun y_ack!3273 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3274) ((_ to_fp 11 53) x1_ack!3270))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3271) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3272) ((_ to_fp 11 53) x0_ack!3274))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3272) ((_ to_fp 11 53) x1_ack!3270))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3273) ((_ to_fp 11 53) y0_ack!3271))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3273) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3270)
                       ((_ to_fp 11 53) x0_ack!3274))
               ((_ to_fp 11 53) x0_ack!3274))
       ((_ to_fp 11 53) x1_ack!3270)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3270)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3270)
                       ((_ to_fp 11 53) x0_ack!3274)))
       ((_ to_fp 11 53) x0_ack!3274)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3271))
               ((_ to_fp 11 53) y0_ack!3271))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3271)))
       ((_ to_fp 11 53) y0_ack!3271)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3273)
                       ((_ to_fp 11 53) y0_ack!3271))
               ((_ to_fp 11 53) y0_ack!3271))
       ((_ to_fp 11 53) y_ack!3273)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3273)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3273)
                       ((_ to_fp 11 53) y0_ack!3271)))
       ((_ to_fp 11 53) y0_ack!3271)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3272)
                  ((_ to_fp 11 53) x0_ack!3274))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3270)
                  ((_ to_fp 11 53) x0_ack!3274)))))

(check-sat)
(exit)
