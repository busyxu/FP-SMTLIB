(declare-fun x1_ack!3391 () (_ BitVec 64))
(declare-fun x0_ack!3395 () (_ BitVec 64))
(declare-fun y0_ack!3392 () (_ BitVec 64))
(declare-fun x_ack!3393 () (_ BitVec 64))
(declare-fun y_ack!3394 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3395) ((_ to_fp 11 53) x1_ack!3391))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3392) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3393) ((_ to_fp 11 53) x0_ack!3395))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3393) ((_ to_fp 11 53) x1_ack!3391))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3394) ((_ to_fp 11 53) y0_ack!3392))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3394) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3391)
                       ((_ to_fp 11 53) x0_ack!3395))
               ((_ to_fp 11 53) x0_ack!3395))
       ((_ to_fp 11 53) x1_ack!3391)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3391)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3391)
                       ((_ to_fp 11 53) x0_ack!3395)))
       ((_ to_fp 11 53) x0_ack!3395)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3392))
               ((_ to_fp 11 53) y0_ack!3392))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3392)))
       ((_ to_fp 11 53) y0_ack!3392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3394)
                       ((_ to_fp 11 53) y0_ack!3392))
               ((_ to_fp 11 53) y0_ack!3392))
       ((_ to_fp 11 53) y_ack!3394)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3394)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3394)
                       ((_ to_fp 11 53) y0_ack!3392)))
       ((_ to_fp 11 53) y0_ack!3392)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3394)
                  ((_ to_fp 11 53) y0_ack!3392))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3392)))))

(check-sat)
(exit)
