(declare-fun limit_ack!3530 () (_ BitVec 64))
(declare-fun epsabs_ack!3535 () (_ BitVec 64))
(declare-fun epsrel_ack!3529 () (_ BitVec 64))
(declare-fun a_ack!3536 () (_ BitVec 64))
(declare-fun x1_ack!3531 () (_ BitVec 64))
(declare-fun x2_ack!3532 () (_ BitVec 64))
(declare-fun x3_ack!3533 () (_ BitVec 64))
(declare-fun b_ack!3534 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3530)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3535) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3529)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3529)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3531) ((_ to_fp 11 53) a_ack!3536))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3532) ((_ to_fp 11 53) x1_ack!3531))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3533) ((_ to_fp 11 53) x2_ack!3532))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3534) ((_ to_fp 11 53) x3_ack!3533))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3536)
                                   ((_ to_fp 11 53) x1_ack!3531))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) x1_ack!3531))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3531)
                           ((_ to_fp 11 53) a_ack!3536)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fe5bdb9228de198)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fe5bdb9228de198)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fdbbcc009016adc)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fdbbcc009016adc))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0ab76a4a94042)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!4)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb335ccd53722e5)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!7)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!8)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fbc00cbfda8818f)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!11)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc13e26d16948d4)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!14)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!15)
                                    ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fc321082b7cd10f))
                            a!6)
                    a!9)))
  (FPCHECK_FADD_OVERFLOW (fp.add roundNearestTiesToEven a!10 a!13) a!16))))))

(check-sat)
(exit)
