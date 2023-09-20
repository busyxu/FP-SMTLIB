(declare-fun alpha1_ack!2854 () (_ BitVec 64))
(declare-fun beta_ack!2855 () (_ BitVec 64))
(declare-fun mu_ack!2856 () (_ BitVec 32))
(declare-fun nu_ack!2857 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2854)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2855)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2856)))
(assert (= #x00000001 mu_ack!2856))
(assert (= #x00000000 nu_ack!2857))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4010000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4010000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!2854)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
