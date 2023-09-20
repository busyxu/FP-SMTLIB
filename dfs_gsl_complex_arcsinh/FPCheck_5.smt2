(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 x_ack!8))

(check-sat)
(exit)
