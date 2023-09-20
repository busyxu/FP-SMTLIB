(declare-fun a_ack!212 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!212) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!212) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!212)
               ((_ to_fp 11 53) a_ack!212))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))

(check-sat)
(exit)
