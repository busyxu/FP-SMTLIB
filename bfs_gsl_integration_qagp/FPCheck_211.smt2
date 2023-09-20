(declare-fun limit_ack!3240 () (_ BitVec 64))
(declare-fun epsabs_ack!3245 () (_ BitVec 64))
(declare-fun a_ack!3246 () (_ BitVec 64))
(declare-fun x1_ack!3241 () (_ BitVec 64))
(declare-fun x2_ack!3242 () (_ BitVec 64))
(declare-fun x3_ack!3243 () (_ BitVec 64))
(declare-fun b_ack!3244 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3240)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3245)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3241) ((_ to_fp 11 53) a_ack!3246))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3242) ((_ to_fp 11 53) x1_ack!3241))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3243) ((_ to_fp 11 53) x2_ack!3242))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3244) ((_ to_fp 11 53) x3_ack!3243))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3246)
                                   ((_ to_fp 11 53) x1_ack!3241))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3246)
                           ((_ to_fp 11 53) x1_ack!3241))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3241)
                                   ((_ to_fp 11 53) a_ack!3246)))
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
  (FPCHECK_FADD_ACCURACY a!3 a!4))))

(check-sat)
(exit)
