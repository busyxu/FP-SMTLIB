(declare-fun a_ack!116 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!116) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!116))
            ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!116))
       ((_ to_fp 11 53) #x3fe0000000000000)))

(check-sat)
(exit)
