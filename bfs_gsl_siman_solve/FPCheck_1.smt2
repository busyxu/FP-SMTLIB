(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_initial_ack!2 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW x_initial_ack!2 #x3ff0000000000000))

(check-sat)
(exit)
