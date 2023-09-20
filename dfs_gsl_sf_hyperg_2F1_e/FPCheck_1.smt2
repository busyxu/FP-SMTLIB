(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun c_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW c_ack!4 a_ack!5))

(check-sat)
(exit)
