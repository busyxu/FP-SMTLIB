(declare-fun alpha1_ack!4337 () (_ BitVec 64))
(declare-fun beta_ack!4338 () (_ BitVec 64))
(declare-fun mu_ack!4339 () (_ BitVec 32))
(declare-fun nu_ack!4340 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!4337)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!4338)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!4339))
(assert (not (= #x00000000 nu_ack!4340)))
(assert (= #x00000001 nu_ack!4340))
(assert (FPCHECK_FDIV_OVERFLOW
  (CF_pow #x4000000000000000
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!4337)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!4337)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
