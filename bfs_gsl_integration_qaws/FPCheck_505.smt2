(declare-fun alpha1_ack!3962 () (_ BitVec 64))
(declare-fun beta_ack!3963 () (_ BitVec 64))
(declare-fun mu_ack!3964 () (_ BitVec 32))
(declare-fun nu_ack!3965 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!3962)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!3963)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!3964)))
(assert (= #x00000001 mu_ack!3964))
(assert (= #x00000000 nu_ack!3965))
(assert (FPCHECK_FADD_OVERFLOW
  #x4022000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!3962)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
