(declare-fun alpha1_ack!2538 () (_ BitVec 64))
(declare-fun beta_ack!2539 () (_ BitVec 64))
(declare-fun mu_ack!2540 () (_ BitVec 32))
(declare-fun nu_ack!2541 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2538)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2539)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2540)))
(assert (= #x00000001 mu_ack!2540))
(assert (= #x00000000 nu_ack!2541))
(assert (FPCHECK_FADD_OVERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!2538)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
