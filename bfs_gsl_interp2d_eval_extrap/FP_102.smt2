(declare-fun x1_ack!4376 () (_ BitVec 64))
(declare-fun x0_ack!4380 () (_ BitVec 64))
(declare-fun y0_ack!4377 () (_ BitVec 64))
(declare-fun x_ack!4378 () (_ BitVec 64))
(declare-fun y_ack!4379 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4380) ((_ to_fp 11 53) x1_ack!4376))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4377) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4378) ((_ to_fp 11 53) x0_ack!4380))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!4378) ((_ to_fp 11 53) x1_ack!4376)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4379) ((_ to_fp 11 53) y0_ack!4377)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4376)
                       ((_ to_fp 11 53) x0_ack!4380))
               ((_ to_fp 11 53) x0_ack!4380))
       ((_ to_fp 11 53) x1_ack!4376)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4376)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4376)
                       ((_ to_fp 11 53) x0_ack!4380)))
       ((_ to_fp 11 53) x0_ack!4380)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4377))
               ((_ to_fp 11 53) y0_ack!4377))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4377)))
       ((_ to_fp 11 53) y0_ack!4377)))

(check-sat)
(exit)
