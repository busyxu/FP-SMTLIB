(declare-fun a_ack!215 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!214 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!215) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 b_ack!214))

(check-sat)
(exit)
