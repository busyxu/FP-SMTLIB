(declare-fun b_ack!26 () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
