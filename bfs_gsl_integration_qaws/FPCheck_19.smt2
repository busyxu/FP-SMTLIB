(declare-fun alpha1_ack!144 () (_ BitVec 64))
(declare-fun beta_ack!145 () (_ BitVec 64))
(declare-fun mu_ack!146 () (_ BitVec 32))
(declare-fun nu_ack!147 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!144)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!145) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!146))
(assert (= #x00000000 nu_ack!147))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!144)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha1_ack!144)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY a!1 alpha1_ack!144)))

(check-sat)
(exit)
