(declare-fun alpha1_ack!3170 () (_ BitVec 64))
(declare-fun beta_ack!3171 () (_ BitVec 64))
(declare-fun mu_ack!3172 () (_ BitVec 32))
(declare-fun nu_ack!3173 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!3170)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!3171)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!3172)))
(assert (= #x00000001 mu_ack!3172))
(assert (= #x00000000 nu_ack!3173))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4010000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4014000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!3170)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
