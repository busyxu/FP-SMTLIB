(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!10 () (_ BitVec 64))
(declare-fun a_ack!11 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!11 (CF_sin b_ack!10)))

(check-sat)
(exit)
