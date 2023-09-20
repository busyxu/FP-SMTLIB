(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!6 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x4024000000000000 y1_ack!6))

(check-sat)
(exit)
