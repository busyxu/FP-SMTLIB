(declare-fun x_hi_ack!30 () (_ BitVec 64))
(declare-fun x_lo_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!31) ((_ to_fp 11 53) x_hi_ack!30))))
(assert (FPCHECK_FADD_UNDERFLOW x_lo_ack!31 x_hi_ack!30))

(check-sat)
(exit)
