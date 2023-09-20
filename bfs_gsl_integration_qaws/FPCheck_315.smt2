(declare-fun alpha1_ack!2478 () (_ BitVec 64))
(declare-fun beta_ack!2479 () (_ BitVec 64))
(declare-fun mu_ack!2480 () (_ BitVec 32))
(declare-fun nu_ack!2481 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2478)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2479)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2480)))
(assert (= #x00000001 mu_ack!2480))
(assert (= #x00000000 nu_ack!2481))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2478)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2478)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha1_ack!2478)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) alpha1_ack!2478))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) alpha1_ack!2478)
                    ((_ to_fp 11 53) #x4000000000000000))))))

(check-sat)
(exit)
