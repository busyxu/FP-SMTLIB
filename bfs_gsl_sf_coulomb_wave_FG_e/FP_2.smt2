(declare-fun b_ack!50 () (_ BitVec 64))
(declare-fun c_ack!51 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!50) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!51) ((_ to_fp 11 53) #xbfe0000000000000)))

(check-sat)
(exit)
