(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!305 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 h_ack!305))

(check-sat)
(exit)
