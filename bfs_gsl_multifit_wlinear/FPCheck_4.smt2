(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x1_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW x1_ack!8 x1_ack!8))

(check-sat)
(exit)
