(declare-fun alpha1_ack!1692 () (_ BitVec 64))
(declare-fun beta_ack!1693 () (_ BitVec 64))
(declare-fun mu_ack!1694 () (_ BitVec 32))
(declare-fun nu_ack!1695 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1692)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1693)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1694))
(assert (= #x00000000 nu_ack!1695))

(check-sat)
(exit)
