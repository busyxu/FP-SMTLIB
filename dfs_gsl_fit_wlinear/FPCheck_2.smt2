(declare-fun w0_ack!15 () (_ BitVec 64))
(declare-fun w1_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!14) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY #x0000000000000000 w1_ack!14))

(check-sat)
(exit)
