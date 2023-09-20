(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun e0_ack!20 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW e0_ack!20 e0_ack!20))

(check-sat)
(exit)
