(declare-fun b_ack!2789 () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2789) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
