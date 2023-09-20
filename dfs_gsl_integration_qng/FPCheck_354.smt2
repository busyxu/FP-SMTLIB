(declare-fun a_ack!2771 () (_ BitVec 64))
(declare-fun b_ack!2768 () (_ BitVec 64))
(declare-fun epsabs_ack!2769 () (_ BitVec 64))
(declare-fun epsrel_ack!2770 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2768)
                                   ((_ to_fp 11 53) a_ack!2771))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2769) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2770)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2770)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2768)
                           ((_ to_fp 11 53) a_ack!2771))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2768)
                           ((_ to_fp 11 53) a_ack!2771)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fe5bdb9228de198)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fe5bdb9228de198)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fdbbcc009016adc)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fdbbcc009016adc)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fc30e507891e27a)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fc30e507891e27a)))))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fefdc6c69272ae5)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fefdc6c69272ae5)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fedc3d9a4b011c6)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_log a!4)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_log a!7)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_log a!8)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!11)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!14)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!15)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!18)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!19)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!21)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!22)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!25)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!26)
                                    ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc321082b7cd10f)
                                    (fp.abs a!2))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa0ab76a4a94042)
                                    a!6))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb335ccd53722e5)
                            a!9))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fbc00cbfda8818f)
                                    a!13))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc13e26d16948d4)
                            a!16))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc2e91d6ff21eb5)
                                    a!20))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f87f35bdbca883f)
                            a!23))))
  (FPCHECK_FADD_UNDERFLOW
    a!24
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fac08f7021999a2) a!27)))))))))

(check-sat)
(exit)
