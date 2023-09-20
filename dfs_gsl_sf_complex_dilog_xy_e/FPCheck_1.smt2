(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!2 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!2 a_ack!2))

(check-sat)
(exit)
