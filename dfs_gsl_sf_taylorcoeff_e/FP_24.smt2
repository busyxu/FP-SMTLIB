(declare-fun b_ack!320 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) b_ack!320) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
