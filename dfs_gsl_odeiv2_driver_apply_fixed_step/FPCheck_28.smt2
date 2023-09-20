(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!71 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 h_ack!71))

(check-sat)
(exit)
