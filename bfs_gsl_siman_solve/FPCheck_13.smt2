(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_initial_ack!21 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW #x3feffbc4d1000000 x_initial_ack!21))

(check-sat)
(exit)
