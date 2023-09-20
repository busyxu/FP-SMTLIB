(declare-fun x_hi_ack!0 () (_ BitVec 64))
(declare-fun x_lo_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!1) ((_ to_fp 11 53) x_hi_ack!0))))
(assert (FPCHECK_FADD_OVERFLOW x_lo_ack!1 x_hi_ack!0))

(check-sat)
(exit)
