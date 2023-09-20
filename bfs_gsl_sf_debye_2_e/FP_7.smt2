(declare-fun a_ack!88 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!88) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!88) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!88) ((_ to_fp 11 53) #x4010000000000000)))

(check-sat)
(exit)
