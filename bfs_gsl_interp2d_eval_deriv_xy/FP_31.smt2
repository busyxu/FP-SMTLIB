(declare-fun x1_ack!966 () (_ BitVec 64))
(declare-fun x0_ack!970 () (_ BitVec 64))
(declare-fun y0_ack!967 () (_ BitVec 64))
(declare-fun x_ack!968 () (_ BitVec 64))
(declare-fun y_ack!969 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!970) ((_ to_fp 11 53) x1_ack!966))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!967) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!968) ((_ to_fp 11 53) x0_ack!970))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!968) ((_ to_fp 11 53) x1_ack!966))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!969) ((_ to_fp 11 53) y0_ack!967))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!969) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!968) ((_ to_fp 11 53) x0_ack!970))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!968) ((_ to_fp 11 53) x1_ack!966)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!969) ((_ to_fp 11 53) y0_ack!967))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!969) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!966)
                       ((_ to_fp 11 53) x0_ack!970))
               ((_ to_fp 11 53) x0_ack!970))
       ((_ to_fp 11 53) x1_ack!966)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!966)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!966)
                       ((_ to_fp 11 53) x0_ack!970)))
       ((_ to_fp 11 53) x0_ack!970)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!967))
               ((_ to_fp 11 53) y0_ack!967))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!967)))
       ((_ to_fp 11 53) y0_ack!967)))

(check-sat)
(exit)
