(declare-fun limit_ack!3352 () (_ BitVec 64))
(declare-fun epsabs_ack!3357 () (_ BitVec 64))
(declare-fun a_ack!3358 () (_ BitVec 64))
(declare-fun x1_ack!3353 () (_ BitVec 64))
(declare-fun x2_ack!3354 () (_ BitVec 64))
(declare-fun x3_ack!3355 () (_ BitVec 64))
(declare-fun b_ack!3356 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3352)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3357)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3353) ((_ to_fp 11 53) a_ack!3358))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3354) ((_ to_fp 11 53) x1_ack!3353))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3355) ((_ to_fp 11 53) x2_ack!3354))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3356) ((_ to_fp 11 53) x3_ack!3355))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3358)
                                   ((_ to_fp 11 53) x1_ack!3353))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3358)
                           ((_ to_fp 11 53) x1_ack!3353))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3353)
                                   ((_ to_fp 11 53) a_ack!3358)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
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
    #x3fc13e26d16948d4
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
