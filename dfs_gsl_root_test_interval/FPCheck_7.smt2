(declare-fun x_hi_ack!32 () (_ BitVec 64))
(declare-fun x_lo_ack!33 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!33) ((_ to_fp 11 53) x_hi_ack!32))))
(assert (FPCHECK_FADD_UNDERFLOW x_lo_ack!33 x_hi_ack!32))

(check-sat)
(exit)
