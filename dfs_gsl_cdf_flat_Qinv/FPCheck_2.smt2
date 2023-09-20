(declare-fun x_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!9 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!10) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!10) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY x_ack!10 a_ack!9))

(check-sat)
(exit)
