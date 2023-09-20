(declare-fun alpha1_ack!1952 () (_ BitVec 64))
(declare-fun beta_ack!1953 () (_ BitVec 64))
(declare-fun mu_ack!1954 () (_ BitVec 32))
(declare-fun nu_ack!1955 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1952)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1953)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1954))
(assert (= #x00000000 nu_ack!1955))
(assert (FPCHECK_FADD_ACCURACY
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!1952)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
