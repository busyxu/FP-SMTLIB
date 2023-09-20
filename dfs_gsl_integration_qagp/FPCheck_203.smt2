(declare-fun limit_ack!3482 () (_ BitVec 64))
(declare-fun epsabs_ack!3487 () (_ BitVec 64))
(declare-fun epsrel_ack!3481 () (_ BitVec 64))
(declare-fun a_ack!3488 () (_ BitVec 64))
(declare-fun x1_ack!3483 () (_ BitVec 64))
(declare-fun x2_ack!3484 () (_ BitVec 64))
(declare-fun x3_ack!3485 () (_ BitVec 64))
(declare-fun b_ack!3486 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3482)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3487) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3481)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3481)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3483) ((_ to_fp 11 53) a_ack!3488))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3484) ((_ to_fp 11 53) x1_ack!3483))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3485) ((_ to_fp 11 53) x2_ack!3484))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3486) ((_ to_fp 11 53) x3_ack!3485))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3488)
                                   ((_ to_fp 11 53) x1_ack!3483))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3488)
                           ((_ to_fp 11 53) x1_ack!3483))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3483)
                                   ((_ to_fp 11 53) a_ack!3488)))
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
  (FPCHECK_FMUL_OVERFLOW
    #x3fc13e26d16948d4
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
