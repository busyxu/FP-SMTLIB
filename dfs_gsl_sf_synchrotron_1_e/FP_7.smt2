(declare-fun a_ack!78 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!78) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!78) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!78) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!78) ((_ to_fp 11 53) #x40894cc46ad56a15)))

(check-sat)
(exit)
