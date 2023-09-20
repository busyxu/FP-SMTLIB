(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x0_ack!2 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW x0_ack!2 x0_ack!2))

(check-sat)
(exit)
