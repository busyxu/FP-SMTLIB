(declare-fun x_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y_ack!19 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW y_ack!19 #x7fc0000000000000))

(check-sat)
(exit)
