(declare-fun y_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!12 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 x_ack!12))

(check-sat)
(exit)
