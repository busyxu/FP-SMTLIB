(declare-fun a_ack!536 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
