(declare-fun x_hi_ack!4 () (_ BitVec 64))
(declare-fun x_lo_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!5) ((_ to_fp 11 53) x_hi_ack!4))))
(assert (FPCHECK_FADD_UNDERFLOW x_lo_ack!5 x_hi_ack!4))

(check-sat)
(exit)
