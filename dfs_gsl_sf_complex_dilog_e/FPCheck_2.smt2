(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun a_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY a_ack!5 (CF_cos b_ack!4)))

(check-sat)
(exit)
