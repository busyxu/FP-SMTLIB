(declare-fun alpha1_ack!60 () (_ BitVec 64))
(declare-fun beta_ack!61 () (_ BitVec 64))
(declare-fun mu_ack!62 () (_ BitVec 32))
(declare-fun nu_ack!63 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!60)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!61) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!62))
(assert (= #x00000000 nu_ack!63))
(assert (FPCHECK_FADD_ACCURACY alpha1_ack!60 #x4000000000000000))

(check-sat)
(exit)
