(declare-fun x1_ack!4326 () (_ BitVec 64))
(declare-fun x0_ack!4330 () (_ BitVec 64))
(declare-fun y0_ack!4327 () (_ BitVec 64))
(declare-fun x_ack!4328 () (_ BitVec 64))
(declare-fun y_ack!4329 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4330) ((_ to_fp 11 53) x1_ack!4326))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4327) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4328) ((_ to_fp 11 53) x0_ack!4330)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4329) ((_ to_fp 11 53) y0_ack!4327))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4329) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4326)
                       ((_ to_fp 11 53) x0_ack!4330))
               ((_ to_fp 11 53) x0_ack!4330))
       ((_ to_fp 11 53) x1_ack!4326)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4326)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4326)
                       ((_ to_fp 11 53) x0_ack!4330)))
       ((_ to_fp 11 53) x0_ack!4330)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4327))
               ((_ to_fp 11 53) y0_ack!4327))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4327)))
       ((_ to_fp 11 53) y0_ack!4327)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4328)
                       ((_ to_fp 11 53) x0_ack!4330))
               ((_ to_fp 11 53) x0_ack!4330))
       ((_ to_fp 11 53) x_ack!4328)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4328)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4328)
                       ((_ to_fp 11 53) x0_ack!4330)))
       ((_ to_fp 11 53) x0_ack!4330)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!4329)
          ((_ to_fp 11 53) y0_ack!4327))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!4327))))

(check-sat)
(exit)
