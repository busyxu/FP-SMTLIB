(declare-fun alpha1_ack!3270 () (_ BitVec 64))
(declare-fun beta_ack!3271 () (_ BitVec 64))
(declare-fun mu_ack!3272 () (_ BitVec 32))
(declare-fun nu_ack!3273 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!3270)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!3271)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!3272)))
(assert (= #x00000001 mu_ack!3272))
(assert (= #x00000000 nu_ack!3273))
(assert (FPCHECK_FMUL_ACCURACY
  #x4018000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4018000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!3270)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
