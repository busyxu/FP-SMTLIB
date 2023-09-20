(declare-fun alpha1_ack!1844 () (_ BitVec 64))
(declare-fun beta_ack!1845 () (_ BitVec 64))
(declare-fun mu_ack!1846 () (_ BitVec 32))
(declare-fun nu_ack!1847 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1844)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1845)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1846))
(assert (= #x00000000 nu_ack!1847))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4024000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!1844)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
