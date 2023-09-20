(declare-fun a_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!23 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY d_ack!23 a_ack!24))

(check-sat)
(exit)
