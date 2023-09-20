(declare-fun x_ack!128 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y_ack!127 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!128) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW y_ack!127 #x7fc0000000000000))

(check-sat)
(exit)
