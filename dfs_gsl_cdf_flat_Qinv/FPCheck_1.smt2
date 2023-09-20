(declare-fun x_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!5 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW x_ack!6 a_ack!5))

(check-sat)
(exit)
