(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_initial_ack!14 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x4020000000000000 x_initial_ack!14))

(check-sat)
(exit)
