(declare-fun alpha1_ack!1976 () (_ BitVec 64))
(declare-fun beta_ack!1977 () (_ BitVec 64))
(declare-fun mu_ack!1978 () (_ BitVec 32))
(declare-fun nu_ack!1979 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1976)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1977)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1978))
(assert (= #x00000000 nu_ack!1979))
(assert (FPCHECK_FMUL_ACCURACY
  #x4022000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!1976)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
