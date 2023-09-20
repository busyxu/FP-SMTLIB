(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW a_ack!0 #x3fd78b56362cef38))

(check-sat)
(exit)
