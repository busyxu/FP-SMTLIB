(declare-fun x_ack!10 () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) x_ack!10) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
