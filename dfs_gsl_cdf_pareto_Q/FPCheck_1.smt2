(declare-fun nu2_ack!4 () (_ BitVec 64))
(declare-fun x_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!5) ((_ to_fp 11 53) nu2_ack!4))))
(assert (FPCHECK_FDIV_UNDERFLOW nu2_ack!4 x_ack!5))

(check-sat)
(exit)
