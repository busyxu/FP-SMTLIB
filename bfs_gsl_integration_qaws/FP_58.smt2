(declare-fun alpha1_ack!1984 () (_ BitVec 64))
(declare-fun beta_ack!1985 () (_ BitVec 64))
(declare-fun mu_ack!1986 () (_ BitVec 32))
(declare-fun nu_ack!1987 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1984)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1985)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1986))
(assert (= #x00000000 nu_ack!1987))

(check-sat)
(exit)
