(declare-fun alpha1_ack!1436 () (_ BitVec 64))
(declare-fun beta_ack!1437 () (_ BitVec 64))
(declare-fun mu_ack!1438 () (_ BitVec 32))
(declare-fun nu_ack!1439 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1436)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1437)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1438))
(assert (= #x00000000 nu_ack!1439))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4020000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4020000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!1436)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
