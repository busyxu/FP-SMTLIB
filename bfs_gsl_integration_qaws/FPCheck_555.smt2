(declare-fun alpha1_ack!4353 () (_ BitVec 64))
(declare-fun beta_ack!4354 () (_ BitVec 64))
(declare-fun mu_ack!4355 () (_ BitVec 32))
(declare-fun nu_ack!4356 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!4353)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!4354)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!4355))
(assert (not (= #x00000000 nu_ack!4356)))
(assert (= #x00000001 nu_ack!4356))
(assert (FPCHECK_FDIV_ACCURACY
  (CF_pow #x4000000000000000
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!4353)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!4353)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
