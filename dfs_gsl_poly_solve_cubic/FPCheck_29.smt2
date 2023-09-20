(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!67 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x403b000000000000 c_ack!67))

(check-sat)
(exit)
