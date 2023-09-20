(declare-fun a_ack!361 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!361) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!361) ((_ to_fp 11 53) #xc000000000000000)))

(check-sat)
(exit)
