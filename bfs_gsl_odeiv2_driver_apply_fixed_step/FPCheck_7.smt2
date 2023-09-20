(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!11 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW y0_ack!11 y0_ack!11))

(check-sat)
(exit)
