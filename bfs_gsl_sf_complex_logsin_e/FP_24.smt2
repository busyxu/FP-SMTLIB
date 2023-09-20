(declare-fun b_ack!207 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) b_ack!207) ((_ to_fp 11 53) #x404e000000000000)))

(check-sat)
(exit)
