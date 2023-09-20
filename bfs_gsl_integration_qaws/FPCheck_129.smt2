(declare-fun alpha1_ack!1004 () (_ BitVec 64))
(declare-fun beta_ack!1005 () (_ BitVec 64))
(declare-fun mu_ack!1006 () (_ BitVec 32))
(declare-fun nu_ack!1007 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1004)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1005)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1006))
(assert (= #x00000000 nu_ack!1007))
(assert (FPCHECK_FSUB_OVERFLOW
  #x4018000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!1004)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
