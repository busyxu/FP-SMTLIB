(declare-fun alpha1_ack!2898 () (_ BitVec 64))
(declare-fun beta_ack!2899 () (_ BitVec 64))
(declare-fun mu_ack!2900 () (_ BitVec 32))
(declare-fun nu_ack!2901 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2898)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2899)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2900)))
(assert (= #x00000001 mu_ack!2900))
(assert (= #x00000000 nu_ack!2901))

(check-sat)
(exit)
