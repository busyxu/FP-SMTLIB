(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_initial_ack!25 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY #x3feffbc4d1000000 x_initial_ack!25))

(check-sat)
(exit)
