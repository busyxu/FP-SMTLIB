(declare-fun alpha1_ack!2770 () (_ BitVec 64))
(declare-fun beta_ack!2771 () (_ BitVec 64))
(declare-fun mu_ack!2772 () (_ BitVec 32))
(declare-fun nu_ack!2773 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2770)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2771)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2772)))
(assert (= #x00000001 mu_ack!2772))
(assert (= #x00000000 nu_ack!2773))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!2770)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
