(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW b_ack!8 b_ack!8))

(check-sat)
(exit)
