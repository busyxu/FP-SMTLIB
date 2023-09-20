(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_initial_ack!23 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW #x3feffbc4d1000000 x_initial_ack!23))

(check-sat)
(exit)
