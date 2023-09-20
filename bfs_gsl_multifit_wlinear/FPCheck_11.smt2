(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun e0_ack!22 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY e0_ack!22 e0_ack!22))

(check-sat)
(exit)
