(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!13 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY y0_ack!13 y0_ack!13))

(check-sat)
(exit)
