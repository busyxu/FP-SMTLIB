(declare-fun x_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun nu1_ack!13 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!14) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!14) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY #x0020000000000000 nu1_ack!13))

(check-sat)
(exit)
