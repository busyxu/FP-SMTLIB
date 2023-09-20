(declare-fun a_ack!0 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!0) ((_ to_fp 11 53) #x4039000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW a_ack!0 #x3ff6a09e667f3bcd))

(check-sat)
(exit)
