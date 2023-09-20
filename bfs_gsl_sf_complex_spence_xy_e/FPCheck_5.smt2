(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 b_ack!8))

(check-sat)
(exit)
