(declare-fun b_ack!10 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!10) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!10) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
