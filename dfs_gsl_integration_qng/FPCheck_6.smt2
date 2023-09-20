(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!23 () (_ BitVec 64))
(declare-fun b_ack!22 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW b_ack!22 a_ack!23))

(check-sat)
(exit)
