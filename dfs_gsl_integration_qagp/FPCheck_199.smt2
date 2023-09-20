(declare-fun limit_ack!3426 () (_ BitVec 64))
(declare-fun epsabs_ack!3431 () (_ BitVec 64))
(declare-fun epsrel_ack!3425 () (_ BitVec 64))
(declare-fun a_ack!3432 () (_ BitVec 64))
(declare-fun x1_ack!3427 () (_ BitVec 64))
(declare-fun x2_ack!3428 () (_ BitVec 64))
(declare-fun x3_ack!3429 () (_ BitVec 64))
(declare-fun b_ack!3430 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3426)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3431) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3425)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3425)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3427) ((_ to_fp 11 53) a_ack!3432))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3428) ((_ to_fp 11 53) x1_ack!3427))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3429) ((_ to_fp 11 53) x2_ack!3428))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3430) ((_ to_fp 11 53) x3_ack!3429))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3432)
                                   ((_ to_fp 11 53) x1_ack!3427))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3432)
                           ((_ to_fp 11 53) x1_ack!3427))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3427)
                                   ((_ to_fp 11 53) a_ack!3432)))
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
    #x3fd13baa7a559bfe
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
