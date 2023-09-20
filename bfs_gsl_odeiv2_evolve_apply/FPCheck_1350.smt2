(declare-fun t_ack!6489 () (_ BitVec 64))
(declare-fun t1_ack!6490 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!6492 () (_ BitVec 64))
(declare-fun h_ack!6493 () (_ BitVec 64))
(declare-fun y0_ack!6491 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6490)
                    ((_ to_fp 11 53) t_ack!6489))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6490)
                    ((_ to_fp 11 53) t_ack!6489))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!6490)
                     ((_ to_fp 11 53) t_ack!6489))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6490)
                    ((_ to_fp 11 53) t_ack!6489))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!6492))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!6491)
                                   ((_ to_fp 11 53) y0_ack!6491))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!6491)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!6493))
                           ((_ to_fp 11 53) y1_ack!6492)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa55fed5a492d16)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!6491))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!6491))
                           a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!6493))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!6491))
                           a!1)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!6491))
                           a!1)))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6491))
                            a!1)))
      (a!24 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa3333333333333)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6491))
                            a!1)))
      (a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa887ad701404ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6491))
                            a!1)))
      (a!48 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f9152f31366e4d8)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6491))
                            a!1))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!6492))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!6492)
                                   a!4))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!6492)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!8 a!8)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!6491)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!6493)
                                   a!5))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!8)
                            a!9)))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6491)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!5))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6491)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!5)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!6492)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!6493)
                            (fp.add roundNearestTiesToEven a!7 a!10)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!6
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!11)
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!6493)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa0000000000000)
                                    ((_ to_fp 11 53) y1_ack!6492))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!11)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!6493)
                    (fp.add roundNearestTiesToEven
                            a!3
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!13))))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!6491)
                                    a!17)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!6491)
                                    a!17))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa3333333333333)
                            ((_ to_fp 11 53) y1_ack!6492))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6492)
                                    a!14))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6492)
                                    a!14))
                    a!18))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd4000000000000)
                                    ((_ to_fp 11 53) y1_ack!6492))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!11))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6492)
                                    a!14))))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa887ad701404ac)
                            ((_ to_fp 11 53) y1_ack!6492))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6492)
                                    a!14))))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f9152f31366e4d8)
                            ((_ to_fp 11 53) y1_ack!6492))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6492)
                                    a!14)))))
(let ((a!20 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!6491)
                                    a!17))
                    a!19))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6491)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!25))))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6491)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!25))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6491)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!25)))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!13))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            a!20))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc3333333333333)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6492)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!21))))
      (a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6492)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!21))))
      (a!34 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6492)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!21))))
      (a!44 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6492)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!21)))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!6491)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!6493)
                            (fp.add roundNearestTiesToEven a!15 a!22))))
      (a!29 (fp.sub roundNearestTiesToEven
                    a!26
                    (fp.mul roundNearestTiesToEven
                            a!27
                            (fp.sub roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!24
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc8000000000000)
                                    a!20))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc3333333333333)
                            a!29)))
      (a!38 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!37
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                                    a!20))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                            a!29)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!48
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                                    a!20))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                            a!29))))
(let ((a!31 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6492)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!30))))
      (a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6492)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!30))))
      (a!45 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6492)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!30)))))
(let ((a!32 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!23)
                    (fp.mul roundNearestTiesToEven
                            a!31
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!23 a!23)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!36 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!6491)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!6493)
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!33 a!34)
                                    a!35)))))
(let ((a!39 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!6493)
                    (fp.add roundNearestTiesToEven
                            a!38
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                                    a!32)))))
(let ((a!40 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6492)
                                    a!39))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!36 a!36)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!46 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!43 a!44)
                            a!45)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6492)
                                    a!39)))))
(let ((a!41 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fcea1cd5438b4f0)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!36)
                            a!40)))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6491)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!46))))
      (a!50 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!36)
                            a!40)))
      (a!53 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6491)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!46))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6491)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!46)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!2
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfac643f63bea075)
                                    a!32))
                    a!41))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!49
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                                    a!32))
                    a!50)))
(let ((a!52 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6492)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6493)
                                    a!51)))))
(let ((a!54 (fp.sub roundNearestTiesToEven
                    a!47
                    (fp.mul roundNearestTiesToEven
                            a!52
                            (fp.sub roundNearestTiesToEven
                                    a!53
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FADD_ACCURACY
    a!42
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe68328ceaf3204) a!54))))))))))))))))))))))))

(check-sat)
(exit)
