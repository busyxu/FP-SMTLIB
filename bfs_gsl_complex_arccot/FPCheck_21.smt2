(declare-fun x_ack!66 () (_ BitVec 64))
(declare-fun y_ack!65 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!66) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!65) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW y_ack!65 #x7ff0000000000001))

(check-sat)
(exit)
