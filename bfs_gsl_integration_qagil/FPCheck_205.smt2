(declare-fun limit_ack!1337 () (_ BitVec 64))
(declare-fun epsabs_ack!1335 () (_ BitVec 64))
(declare-fun epsrel_ack!1336 () (_ BitVec 64))
(declare-fun b_ack!1338 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1337)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1335) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1336)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1336)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1338)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1338)
                                   ((_ to_fp 11 53) #x4002edd364e98116)))))
      (a!3 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1338)
                                   ((_ to_fp 11 53) #x3fdb0c6631e47925))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3fd303510773014f))
                   ((_ to_fp 11 53) #x3fd303510773014f)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3fe67e577c467f58))
                   ((_ to_fp 11 53) #x3fe67e577c467f58))))
  (FPCHECK_FMUL_ACCURACY
    #x3fd86fe74ee32b3d
    (fp.add roundNearestTiesToEven a!2 a!4)))))

(check-sat)
(exit)
