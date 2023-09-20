(declare-fun limit_ack!3464 () (_ BitVec 64))
(declare-fun epsabs_ack!3469 () (_ BitVec 64))
(declare-fun a_ack!3470 () (_ BitVec 64))
(declare-fun x1_ack!3465 () (_ BitVec 64))
(declare-fun x2_ack!3466 () (_ BitVec 64))
(declare-fun x3_ack!3467 () (_ BitVec 64))
(declare-fun b_ack!3468 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3464)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3469)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3465) ((_ to_fp 11 53) a_ack!3470))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3466) ((_ to_fp 11 53) x1_ack!3465))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3467) ((_ to_fp 11 53) x2_ack!3466))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3468) ((_ to_fp 11 53) x3_ack!3467))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3470)
                                   ((_ to_fp 11 53) x1_ack!3465))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3470)
                           ((_ to_fp 11 53) x1_ack!3465))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3465)
                                   ((_ to_fp 11 53) a_ack!3470)))
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
    (fp.add roundNearestTiesToEven (fp.abs a!3) (fp.abs a!4))))))

(check-sat)
(exit)
