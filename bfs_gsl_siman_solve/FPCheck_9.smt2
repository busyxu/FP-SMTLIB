(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_initial_ack!16 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x4020000000000000 x_initial_ack!16))

(check-sat)
(exit)
