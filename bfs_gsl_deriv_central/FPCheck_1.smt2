(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!4 () (_ BitVec 64))
(declare-fun x_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW x_ack!5 h_ack!4))

(check-sat)
(exit)
