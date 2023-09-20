(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun x_initial_ack!20 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!20)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (CF_exp a!1)
    (CF_sin (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4020000000000000)
                    ((_ to_fp 11 53) x_initial_ack!20))))))

(check-sat)
(exit)
