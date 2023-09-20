(declare-fun x1_ack!52 () (_ BitVec 64))
(declare-fun x0_ack!56 () (_ BitVec 64))
(declare-fun y0_ack!53 () (_ BitVec 64))
(declare-fun x_ack!54 () (_ BitVec 64))
(declare-fun y_ack!55 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!56) ((_ to_fp 11 53) x1_ack!52))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!53) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!54) ((_ to_fp 11 53) x0_ack!56))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!54) ((_ to_fp 11 53) x1_ack!52))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!55) ((_ to_fp 11 53) y0_ack!53))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!55) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!52)
                       ((_ to_fp 11 53) x0_ack!56))
               ((_ to_fp 11 53) x0_ack!56))
       ((_ to_fp 11 53) x1_ack!52)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!52)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!52)
                       ((_ to_fp 11 53) x0_ack!56)))
       ((_ to_fp 11 53) x0_ack!56)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!53))
               ((_ to_fp 11 53) y0_ack!53))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!53)))
       ((_ to_fp 11 53) y0_ack!53)))

(check-sat)
(exit)
