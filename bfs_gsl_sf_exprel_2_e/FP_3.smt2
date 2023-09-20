(declare-fun a_ack!22 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x3f60624dd2f1a9fc)))

(check-sat)
(exit)
