(declare-fun mu_ack!40 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!40) ((_ to_fp 11 53) #x403e000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x4024000000000000 mu_ack!40))

(check-sat)
(exit)
