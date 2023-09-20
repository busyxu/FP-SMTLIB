(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!7 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 x_ack!7))

(check-sat)
(exit)
