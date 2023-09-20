(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY b_ack!4 b_ack!4))

(check-sat)
(exit)
