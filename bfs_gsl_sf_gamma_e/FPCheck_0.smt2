(declare-fun a_ack!0 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!0) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW a_ack!0 #x3fe0000000000000))

(check-sat)
(exit)
