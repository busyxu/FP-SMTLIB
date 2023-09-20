(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!0 () (_ BitVec 64))
(declare-fun a_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!1 (CF_cos b_ack!0)))

(check-sat)
(exit)
