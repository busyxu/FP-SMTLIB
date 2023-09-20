(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!4 () (_ BitVec 64))
(declare-fun x_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FDIV_UNDERFLOW x_ack!5 a_ack!4))

(check-sat)
(exit)
