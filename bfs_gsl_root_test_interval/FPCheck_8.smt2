(declare-fun x_hi_ack!34 () (_ BitVec 64))
(declare-fun x_lo_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!35) ((_ to_fp 11 53) x_hi_ack!34))))
(assert (FPCHECK_FADD_ACCURACY x_lo_ack!35 x_hi_ack!34))

(check-sat)
(exit)
