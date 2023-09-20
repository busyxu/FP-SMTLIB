(declare-fun a_ack!90 () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
