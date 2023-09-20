(declare-fun alpha1_ack!2442 () (_ BitVec 64))
(declare-fun beta_ack!2443 () (_ BitVec 64))
(declare-fun mu_ack!2444 () (_ BitVec 32))
(declare-fun nu_ack!2445 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2442)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2443)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2444)))
(assert (= #x00000001 mu_ack!2444))
(assert (= #x00000000 nu_ack!2445))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha1_ack!2442)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
