(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY a_ack!4 a_ack!4))

(check-sat)
(exit)
