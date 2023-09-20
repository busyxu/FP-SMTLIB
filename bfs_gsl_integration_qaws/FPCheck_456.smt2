(declare-fun alpha1_ack!3578 () (_ BitVec 64))
(declare-fun beta_ack!3579 () (_ BitVec 64))
(declare-fun mu_ack!3580 () (_ BitVec 32))
(declare-fun nu_ack!3581 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!3578)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!3579)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!3580)))
(assert (= #x00000001 mu_ack!3580))
(assert (= #x00000000 nu_ack!3581))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4018000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x401c000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!3578)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
