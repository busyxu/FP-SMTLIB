(declare-fun x_hi_ack!8 () (_ BitVec 64))
(declare-fun x_lo_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!9) ((_ to_fp 11 53) x_hi_ack!8))))
(assert (FPCHECK_FADD_ACCURACY x_lo_ack!9 x_hi_ack!8))

(check-sat)
(exit)
