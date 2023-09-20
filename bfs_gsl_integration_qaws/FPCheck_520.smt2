(declare-fun alpha1_ack!4078 () (_ BitVec 64))
(declare-fun beta_ack!4079 () (_ BitVec 64))
(declare-fun mu_ack!4080 () (_ BitVec 32))
(declare-fun nu_ack!4081 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!4078)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!4079)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!4080)))
(assert (= #x00000001 mu_ack!4080))
(assert (= #x00000000 nu_ack!4081))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4024000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!4078)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
