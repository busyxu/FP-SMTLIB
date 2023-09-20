(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!12 () (_ BitVec 64))
(declare-fun a_ack!13 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY a_ack!13 (CF_sin b_ack!12)))

(check-sat)
(exit)
