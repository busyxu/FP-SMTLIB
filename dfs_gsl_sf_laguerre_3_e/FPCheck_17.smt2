(declare-fun a_ack!62 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!61 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!62) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY b_ack!61 b_ack!61))

(check-sat)
(exit)
