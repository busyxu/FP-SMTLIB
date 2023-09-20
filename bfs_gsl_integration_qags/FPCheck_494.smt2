(declare-fun limit_ack!3983 () (_ BitVec 64))
(declare-fun epsabs_ack!3982 () (_ BitVec 64))
(declare-fun b_ack!3981 () (_ BitVec 64))
(declare-fun a_ack!3984 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3983)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3982)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3984)
                                   ((_ to_fp 11 53) b_ack!3981))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3984)
                           ((_ to_fp 11 53) b_ack!3981))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3981)
                           ((_ to_fp 11 53) a_ack!3984)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fefdc6c69272ae5)))))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fe5bdb9228de198)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fe5bdb9228de198)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fdbbcc009016adc)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fdbbcc009016adc)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fc30e507891e27a)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fc30e507891e27a)))))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fefdc6c69272ae5)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fedc3d9a4b011c6)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fedc3d9a4b011c6)))))
      (a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fe8fc7574fa6c62)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fe8fc7574fa6c62)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fe2021b401fc120)))))
      (a!31 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fe2021b401fc120)))))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fd2d755295ea137)))))
      (a!34 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fd2d755295ea137))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0ab76a4a94042)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!6)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb335ccd53722e5)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!8)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!9)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fbc00cbfda8818f)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!13)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc13e26d16948d4)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!15)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!16)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc2e91d6ff21eb5)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!18)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!19)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f87f35bdbca883f)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!3)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!21)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fac08f7021999a2)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!24)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!25)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7d711dddcb389)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!27)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!28)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fbf9d2b8f5d2dde)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!30)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!31)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc2467b616c0e05)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!33)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!34)
                                    ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3fc321082b7cd10f))
                            a!7)
                    a!10)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!11 a!14)
                                    a!17)
                            a!20)
                    a!22)))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!23 a!26)
                                    a!29)
                            a!32)
                    a!35)))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (CF_log a!3)
            ((_ to_fp 11 53) #x7ff8000000000001))
    (fp.mul roundNearestTiesToEven a!36 ((_ to_fp 11 53) #x3fe0000000000000))))))))))

(check-sat)
(exit)
