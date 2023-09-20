(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!8 () (_ BitVec 64))
(declare-fun a_ack!9 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!9 (CF_sin b_ack!8)))

(check-sat)
(exit)
