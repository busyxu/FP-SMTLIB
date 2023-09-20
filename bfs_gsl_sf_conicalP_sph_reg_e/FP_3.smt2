(declare-fun c_ack!82 () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) c_ack!82) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
