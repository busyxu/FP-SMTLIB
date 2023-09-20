(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!39 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x4022000000000000 a_ack!39))

(check-sat)
(exit)
