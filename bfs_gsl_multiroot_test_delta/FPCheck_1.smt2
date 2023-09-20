(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x0_ack!2 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 x0_ack!2))

(check-sat)
(exit)
