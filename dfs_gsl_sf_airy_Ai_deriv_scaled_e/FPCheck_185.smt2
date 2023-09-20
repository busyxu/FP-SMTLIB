(declare-fun a_ack!741 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!741) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!741) ((_ to_fp 11 53) #xc010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!741) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!741) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!741)
                       ((_ to_fp 11 53) a_ack!741))
               ((_ to_fp 11 53) a_ack!741))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
