(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!22 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 a_ack!22))

(check-sat)
(exit)
