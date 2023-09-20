(declare-fun h_ack!146 () (_ BitVec 64))
(declare-fun x_ack!147 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!147)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!146)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!147)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!146)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!147)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!146)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000)))
  (FPCHECK_FMUL_OVERFLOW
    #x4034aaaaaaaaaaab
    (fp.sub roundNearestTiesToEven a!1 a!2))))

(check-sat)
(exit)
