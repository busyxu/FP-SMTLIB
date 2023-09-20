(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun t_ack!5 () (_ BitVec 64))
(declare-fun t1_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW t1_ack!4 t_ack!5))

(check-sat)
(exit)
