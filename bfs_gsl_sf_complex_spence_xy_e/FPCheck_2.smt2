(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 a_ack!4))

(check-sat)
(exit)
