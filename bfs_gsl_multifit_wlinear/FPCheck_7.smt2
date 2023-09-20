(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x2_ack!14 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW x2_ack!14 x2_ack!14))

(check-sat)
(exit)
