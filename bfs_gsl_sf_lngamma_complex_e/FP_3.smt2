(declare-fun a_ack!28 () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x3fe0000000000000)))

(check-sat)
(exit)
