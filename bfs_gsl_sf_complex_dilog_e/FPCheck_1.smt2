(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!2 () (_ BitVec 64))
(declare-fun a_ack!3 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!3 (CF_cos b_ack!2)))

(check-sat)
(exit)
