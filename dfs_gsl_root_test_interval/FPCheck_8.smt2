(declare-fun x_hi_ack!36 () (_ BitVec 64))
(declare-fun x_lo_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!37) ((_ to_fp 11 53) x_hi_ack!36))))
(assert (FPCHECK_FADD_ACCURACY x_lo_ack!37 x_hi_ack!36))

(check-sat)
(exit)
