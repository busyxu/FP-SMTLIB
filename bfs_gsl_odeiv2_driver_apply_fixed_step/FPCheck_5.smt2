(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!7 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x4024000000000000 y1_ack!7))

(check-sat)
(exit)
