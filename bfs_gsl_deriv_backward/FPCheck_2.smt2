(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!3 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 h_ack!3))

(check-sat)
(exit)
