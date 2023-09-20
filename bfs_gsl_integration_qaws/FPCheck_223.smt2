(declare-fun alpha1_ack!1744 () (_ BitVec 64))
(declare-fun beta_ack!1745 () (_ BitVec 64))
(declare-fun mu_ack!1746 () (_ BitVec 32))
(declare-fun nu_ack!1747 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1744)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1745)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1746))
(assert (= #x00000000 nu_ack!1747))
(assert (FPCHECK_FADD_UNDERFLOW
  #x4022000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!1744)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
