(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p2_ack!137 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 p2_ack!137))

(check-sat)
(exit)
