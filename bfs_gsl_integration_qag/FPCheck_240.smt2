(declare-fun key_ack!2600 () (_ BitVec 32))
(declare-fun limit_ack!2599 () (_ BitVec 64))
(declare-fun epsabs_ack!2598 () (_ BitVec 64))
(declare-fun b_ack!2597 () (_ BitVec 64))
(declare-fun a_ack!2601 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!2600 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2600)))
(assert (= #x00000001 key_ack!2600))
(assert (not (bvult #x00000000000003e8 limit_ack!2599)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2598)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2601)
                                   ((_ to_fp 11 53) b_ack!2597))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2601)
                           ((_ to_fp 11 53) b_ack!2597))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2597)
                                   ((_ to_fp 11 53) a_ack!2601)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_ACCURACY
    #x3fb026cdaa7b61c4
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
