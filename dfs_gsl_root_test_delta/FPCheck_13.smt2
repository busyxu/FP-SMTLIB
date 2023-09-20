(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!20 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 x_ack!20))

(check-sat)
(exit)
