(declare-fun alpha1_ack!4050 () (_ BitVec 64))
(declare-fun beta_ack!4051 () (_ BitVec 64))
(declare-fun mu_ack!4052 () (_ BitVec 32))
(declare-fun nu_ack!4053 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!4050)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!4051)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!4052)))
(assert (= #x00000001 mu_ack!4052))
(assert (= #x00000000 nu_ack!4053))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!4050)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
