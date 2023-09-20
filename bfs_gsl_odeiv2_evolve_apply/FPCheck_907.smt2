(declare-fun t_ack!4325 () (_ BitVec 64))
(declare-fun t1_ack!4326 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4327 () (_ BitVec 64))
(declare-fun y1_ack!4328 () (_ BitVec 64))
(declare-fun h_ack!4329 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4326)
                    ((_ to_fp 11 53) t_ack!4325))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4326)
                    ((_ to_fp 11 53) t_ack!4325))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!4326)
                     ((_ to_fp 11 53) t_ack!4325))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4326)
                    ((_ to_fp 11 53) t_ack!4325))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!4328))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!4327)
                                   ((_ to_fp 11 53) y0_ack!4327))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!4327)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!4329))
                           ((_ to_fp 11 53) y1_ack!4328)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0912d609427e0)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4327))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4327))
                           a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!4329))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4327))
                           a!1)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4327))
                            a!1)))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4327))
                            a!1)))
      (a!30 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa3333333333333)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4327))
                            a!1)))
      (a!38 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa887ad701404ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4327))
                            a!1)))
      (a!49 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f9152f31366e4d8)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4327))
                            a!1)))
      (a!62 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4327))
                            a!1))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4328)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!4328))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!6)))
      (a!12 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!11))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!11))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!11)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!4328)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!4329)
                           (fp.add roundNearestTiesToEven a!3 a!7)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) h_ack!4329)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fa0000000000000)
                                   ((_ to_fp 11 53) y1_ack!4328))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb8000000000000)
                                   a!8))))
      (a!14 (fp.sub roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!8)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4329)
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!14))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4327)
                                    a!9)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4327)
                                    a!9))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!15))
                    a!16))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd4000000000000)
                                    ((_ to_fp 11 53) y1_ack!4328))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!15))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa3333333333333)
                            ((_ to_fp 11 53) y1_ack!4328))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!15))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa887ad701404ac)
                            ((_ to_fp 11 53) y1_ack!4328))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!15))))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f9152f31366e4d8)
                            ((_ to_fp 11 53) y1_ack!4328))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!15))))
      (a!56 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                            ((_ to_fp 11 53) y1_ack!4328))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfe44bc269b358dd)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!15)))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4327)
                                    a!9))
                    a!17))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!19))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!19))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!19)))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!14))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            a!18))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!22))))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc3333333333333)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!22))))
      (a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!22))))
      (a!45 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!22))))
      (a!57 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc4a21f44e45fd3)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!22)))))
(let ((a!25 (fp.sub roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    a!24
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!29 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4327)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!4329)
                            (fp.add roundNearestTiesToEven a!27 a!28)))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!2
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc0131912cd3f9270)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfdbd8905e38fcd7)
                            a!25)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!30
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc8000000000000)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc3333333333333)
                            a!25)))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!38
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                            a!25)))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!49
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                            a!25)))
      (a!63 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!62
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe44bc269b358dd)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc4a21f44e45fd3)
                            a!25))))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!31))))
      (a!36 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!31))))
      (a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!31))))
      (a!58 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc1bf4b185a5c0b)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!31)))))
(let ((a!33 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!29)
                    (fp.mul roundNearestTiesToEven
                            a!32
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!29 a!29)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4327)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!4329)
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!34 a!35)
                                    a!36)))))
(let ((a!40 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4329)
                    (fp.add roundNearestTiesToEven
                            a!39
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                                    a!33)))))
(let ((a!41 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!40))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!37 a!37)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!47 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!44 a!45)
                            a!46)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!40))))
      (a!59 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!56 a!57)
                            a!58)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee1c165324ef0a)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!40)))))
(let ((a!42 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x40164fca455cea0c)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!37)
                            a!41)))
      (a!48 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!47))))
      (a!51 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!37)
                            a!41)))
      (a!54 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!47))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4327)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!47))))
      (a!64 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fee1c165324ef0a)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!37)
                            a!41))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc00865578467943f)
                                    a!33))
                    a!42))
      (a!52 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!50
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                                    a!33))
                    a!51))
      (a!65 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!63
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc1bf4b185a5c0b)
                                    a!33))
                    a!64)))
(let ((a!53 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!52))))
      (a!60 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fcb16e62e7158fc)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4328)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4329)
                                    a!52)))))
(let ((a!55 (fp.sub roundNearestTiesToEven
                    a!48
                    (fp.mul roundNearestTiesToEven
                            a!53
                            (fp.sub roundNearestTiesToEven
                                    a!54
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!61 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4327)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!4329)
                            (fp.add roundNearestTiesToEven a!59 a!60)))))
(let ((a!66 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4329)
                    (fp.add roundNearestTiesToEven
                            a!65
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fcb16e62e7158fc)
                                    a!55)))))
(let ((a!67 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4328)
                                    a!66))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!61 a!61)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!68 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc0143f985843ddf3)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!61)
                            a!67))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            a!43
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x40189f9250f88c23)
                    a!55))
    a!68))))))))))))))))))))))))))

(check-sat)
(exit)
