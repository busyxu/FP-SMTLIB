(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!22 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 x_ack!22))

(check-sat)
(exit)
