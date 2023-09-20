(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun nu1_ack!4 () (_ BitVec 64))
(declare-fun nu2_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FDIV_UNDERFLOW nu2_ack!5 nu1_ack!4))

(check-sat)
(exit)
