(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x4010000000000000 a_ack!8))

(check-sat)
(exit)
