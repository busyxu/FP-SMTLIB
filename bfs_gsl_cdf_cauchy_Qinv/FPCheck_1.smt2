(declare-fun x_ack!3 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!3) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x400921fb54442d18 x_ack!3))

(check-sat)
(exit)
