(declare-fun alpha1_ack!2618 () (_ BitVec 64))
(declare-fun beta_ack!2619 () (_ BitVec 64))
(declare-fun mu_ack!2620 () (_ BitVec 32))
(declare-fun nu_ack!2621 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2618)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2619)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2620)))
(assert (= #x00000001 mu_ack!2620))
(assert (= #x00000000 nu_ack!2621))
(assert (FPCHECK_FSUB_OVERFLOW
  #x4008000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!2618)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
