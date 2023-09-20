(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p2_ack!135 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 p2_ack!135))

(check-sat)
(exit)
