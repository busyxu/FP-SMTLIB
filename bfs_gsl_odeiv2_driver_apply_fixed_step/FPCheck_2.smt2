(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 y0_ack!3))

(check-sat)
(exit)
