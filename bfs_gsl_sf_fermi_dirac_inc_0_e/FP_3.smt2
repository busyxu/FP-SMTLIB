(declare-fun b_ack!54 () (_ BitVec 64))
(declare-fun a_ack!55 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!54)
                    ((_ to_fp 11 53) a_ack!55))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!54)
                    ((_ to_fp 11 53) a_ack!55))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!54)
               ((_ to_fp 11 53) a_ack!55))
       ((_ to_fp 11 53) #x4024000000000000)))

(check-sat)
(exit)
