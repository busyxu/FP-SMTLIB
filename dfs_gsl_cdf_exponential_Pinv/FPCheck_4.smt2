(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 x_ack!5))

(check-sat)
(exit)
