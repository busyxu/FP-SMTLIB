(declare-fun x1_ack!4271 () (_ BitVec 64))
(declare-fun x0_ack!4275 () (_ BitVec 64))
(declare-fun y0_ack!4272 () (_ BitVec 64))
(declare-fun x_ack!4273 () (_ BitVec 64))
(declare-fun y_ack!4274 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4275) ((_ to_fp 11 53) x1_ack!4271))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4272) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4273) ((_ to_fp 11 53) x0_ack!4275)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4274) ((_ to_fp 11 53) y0_ack!4272))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4274) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4271)
                       ((_ to_fp 11 53) x0_ack!4275))
               ((_ to_fp 11 53) x0_ack!4275))
       ((_ to_fp 11 53) x1_ack!4271)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4271)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4271)
                       ((_ to_fp 11 53) x0_ack!4275)))
       ((_ to_fp 11 53) x0_ack!4275)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4272))
               ((_ to_fp 11 53) y0_ack!4272))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4272)))
       ((_ to_fp 11 53) y0_ack!4272)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4273)
                       ((_ to_fp 11 53) x0_ack!4275))
               ((_ to_fp 11 53) x0_ack!4275))
       ((_ to_fp 11 53) x_ack!4273)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4273)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4273)
                       ((_ to_fp 11 53) x0_ack!4275)))
       ((_ to_fp 11 53) x0_ack!4275)))

(check-sat)
(exit)
