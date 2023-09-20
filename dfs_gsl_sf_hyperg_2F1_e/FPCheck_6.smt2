(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!22 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW a_ack!22 #x3fe0000000000000))

(check-sat)
(exit)
