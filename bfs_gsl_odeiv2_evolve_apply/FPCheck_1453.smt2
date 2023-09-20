(declare-fun t_ack!6995 () (_ BitVec 64))
(declare-fun t1_ack!6996 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6997 () (_ BitVec 64))
(declare-fun y1_ack!6998 () (_ BitVec 64))
(declare-fun h_ack!6999 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6996)
                    ((_ to_fp 11 53) t_ack!6995))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6996)
                    ((_ to_fp 11 53) t_ack!6995))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!6996)
                     ((_ to_fp 11 53) t_ack!6995))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6996)
                    ((_ to_fp 11 53) t_ack!6995))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!6998))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!6997)
                                   ((_ to_fp 11 53) y0_ack!6997))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!6997)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!6999))
                           ((_ to_fp 11 53) y1_ack!6998)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa3333333333333)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!6997))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!6997))
                           a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!6999))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!6997))
                           a!1)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6997))
                            a!1)))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6997))
                            a!1)))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa887ad701404ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6997))
                            a!1)))
      (a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f9152f31366e4d8)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6997))
                            a!1)))
      (a!47 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6997))
                            a!1)))
      (a!61 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc77ecbb1301621)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6997))
                            a!1)))
      (a!75 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff372614b1764cf)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6997))
                            a!1)))
      (a!93 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd0912d609427e0)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!6997))
                            a!1)))
      (a!118 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fea5153af7727fd)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) y0_ack!6997))
                             a!1)))
      (a!142 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fa55fed5a492d16)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) y0_ack!6997))
                             a!1))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!6998)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!6998))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
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
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!11))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!11))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!11)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!6998)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!6999)
                           (fp.add roundNearestTiesToEven a!3 a!7)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) h_ack!6999)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fa0000000000000)
                                   ((_ to_fp 11 53) y1_ack!6998))
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
                    ((_ to_fp 11 53) h_ack!6999)
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!14))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!6997)
                                    a!9)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!6997)
                                    a!9))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!15))
                    a!16))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd4000000000000)
                                    ((_ to_fp 11 53) y1_ack!6998))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!15))))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa3333333333333)
                            ((_ to_fp 11 53) y1_ack!6998))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!15))))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa887ad701404ac)
                            ((_ to_fp 11 53) y1_ack!6998))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!15))))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f9152f31366e4d8)
                            ((_ to_fp 11 53) y1_ack!6998))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!15))))
      (a!65 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                            ((_ to_fp 11 53) y1_ack!6998))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfe44bc269b358dd)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!15))))
      (a!81 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc77ecbb1301621)
                            ((_ to_fp 11 53) y1_ack!6998))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xc003c0097b3c5a32)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!15))))
      (a!99 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff372614b1764cf)
                            ((_ to_fp 11 53) y1_ack!6998))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4030ac3014df3e48)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!15))))
      (a!126 (fp.add roundNearestTiesToEven
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fd0912d609427e0)
                             ((_ to_fp 11 53) y1_ack!6998))
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #xc0131912cd3f9270)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!15))))
      (a!149 (fp.add roundNearestTiesToEven
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fea5153af7727fd)
                             ((_ to_fp 11 53) y1_ack!6998))
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #xc027513d9f0583c5)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!15)))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!6997)
                                    a!9))
                    a!17))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!19))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!19))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
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
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!22))))
      (a!31 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc3333333333333)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!22))))
      (a!40 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!22))))
      (a!52 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!22))))
      (a!66 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc4a21f44e45fd3)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!22))))
      (a!82 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfd2a471c23b2d29)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!22))))
      (a!100 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fed4dc1ce9424ac)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!22))))
      (a!127 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xbfdbd8905e38fcd7)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!22))))
      (a!150 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xbfe83e70bcbd3e65)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!22)))))
(let ((a!25 (fp.sub roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    a!24
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!6997)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!6999)
                            (fp.add roundNearestTiesToEven a!30 a!31)))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!2
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc8000000000000)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc3333333333333)
                            a!25)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!28
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                            a!25)))
      (a!38 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!37
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                            a!25)))
      (a!48 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!47
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe44bc269b358dd)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc4a21f44e45fd3)
                            a!25)))
      (a!62 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!61
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc003c0097b3c5a32)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfd2a471c23b2d29)
                            a!25)))
      (a!76 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!75
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030ac3014df3e48)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fed4dc1ce9424ac)
                            a!25)))
      (a!94 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!93
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc0131912cd3f9270)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfdbd8905e38fcd7)
                            a!25)))
      (a!119 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!118
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #xc027513d9f0583c5)
                                     a!18))
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #xbfe83e70bcbd3e65)
                             a!25))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfea83f14f58d042)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!26))))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!26))))
      (a!41 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!26))))
      (a!53 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!26))))
      (a!67 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc1bf4b185a5c0b)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!26))))
      (a!83 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf9b1bbe5082a5c1)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!26))))
      (a!101 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xc01839f6df39ea9c)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!26))))
      (a!111 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xbfac643f63bea075)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!26))))
      (a!128 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xc00865578467943f)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!26))))
      (a!151 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe6d8df236b4d37)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!26)))))
(let ((a!34 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!32)
                    (fp.mul roundNearestTiesToEven
                            a!33
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!32 a!32)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!42 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!6997)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!6999)
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!39 a!40)
                                    a!41)))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!6999)
                    (fp.add roundNearestTiesToEven
                            a!29
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                                    a!34)))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f9e433298ed3291)
                                    ((_ to_fp 11 53) y1_ack!6998))
                            a!27)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd3eb5ef3b96b09)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!35))))
      (a!43 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!35))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!42 a!42)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!54 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!51 a!52)
                            a!53)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!35))))
      (a!68 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!65 a!66)
                            a!67)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee1c165324ef0a)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!35))))
      (a!84 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!81 a!82)
                            a!83)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4006c85fb0a3e9bf)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!35))))
      (a!102 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven a!99 a!100)
                             a!101)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #xc03000ea32f607ac)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!35))))
      (a!112 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3fa55fed5a492d16)
                                     ((_ to_fp 11 53) y1_ack!6998))
                             a!111)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fcea1cd5438b4f0)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!35))))
      (a!129 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven a!126 a!127)
                             a!128)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x40164fca455cea0c)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!35))))
      (a!152 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven a!149 a!150)
                             a!151)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x402826cbfaa51862)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!35)))))
(let ((a!44 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!42)
                            a!43)))
      (a!49 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fee1c165324ef0a)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!42)
                            a!43)))
      (a!55 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!54))))
      (a!57 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!54))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!54))))
      (a!63 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4006c85fb0a3e9bf)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!42)
                            a!43)))
      (a!77 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc03000ea32f607ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!42)
                            a!43)))
      (a!95 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x40164fca455cea0c)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!42)
                            a!43)))
      (a!120 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x402826cbfaa51862)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     a!42)
                             a!43)))
      (a!143 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fcea1cd5438b4f0)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     a!42)
                             a!43))))
(let ((a!45 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!38
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                                    a!34))
                    a!44))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!48
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc1bf4b185a5c0b)
                                    a!34))
                    a!49))
      (a!64 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!62
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf9b1bbe5082a5c1)
                                    a!34))
                    a!63))
      (a!78 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!76
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc01839f6df39ea9c)
                                    a!34))
                    a!77))
      (a!96 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!94
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc00865578467943f)
                                    a!34))
                    a!95))
      (a!121 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!119
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3fe6d8df236b4d37)
                                     a!34))
                     a!120))
      (a!144 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!142
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #xbfac643f63bea075)
                                     a!34))
                     a!143)))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4003bd1f79ac8e22)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!45))))
      (a!56 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!45))))
      (a!69 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fcb16e62e7158fc)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!45))))
      (a!85 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd20240028afd67)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!45))))
      (a!103 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x402db2d7daa814a6)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!45))))
      (a!113 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe68328ceaf3204)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!45))))
      (a!130 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x40189f9250f88c23)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!45))))
      (a!153 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xc0010572243a9883)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!45)))))
(let ((a!58 (fp.sub roundNearestTiesToEven
                    a!55
                    (fp.mul roundNearestTiesToEven
                            a!56
                            (fp.sub roundNearestTiesToEven
                                    a!57
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!70 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!6997)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!6999)
                            (fp.add roundNearestTiesToEven a!68 a!69)))))
(let ((a!59 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!6999)
                    (fp.add roundNearestTiesToEven
                            a!50
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fcb16e62e7158fc)
                                    a!58)))))
(let ((a!60 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!36 a!46)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xc0046022f1dbd988)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!59))))
      (a!71 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!59))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!70 a!70)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!86 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!84 a!85)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbfadbee9f5b0f4)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!59))))
      (a!104 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven a!102 a!103)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #xc02abe3f2cbe1d36)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!59))))
      (a!114 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven a!112 a!113)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #xbfe84ff364c4f34c)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!59))))
      (a!131 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven a!129 a!130)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #xc0143f985843ddf3)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!59))))
      (a!154 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven a!152 a!153)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fffd7b8854e12f5)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!59)))))
(let ((a!72 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fbfadbee9f5b0f4)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!70)
                            a!71)))
      (a!79 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc02abe3f2cbe1d36)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!70)
                            a!71)))
      (a!87 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!86))))
      (a!89 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!86))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!6997)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!86))))
      (a!97 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc0143f985843ddf3)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!70)
                            a!71)))
      (a!122 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fffd7b8854e12f5)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     a!70)
                             a!71)))
      (a!145 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xbfe84ff364c4f34c)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     a!70)
                             a!71))))
(let ((a!73 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!64
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd20240028afd67)
                                    a!58))
                    a!72))
      (a!80 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!78
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402db2d7daa814a6)
                                    a!58))
                    a!79))
      (a!98 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!96
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40189f9250f88c23)
                                    a!58))
                    a!97))
      (a!123 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!121
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #xc0010572243a9883)
                                     a!58))
                     a!122))
      (a!146 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!144
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3fe68328ceaf3204)
                                     a!58))
                     a!145)))
(let ((a!74 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff718c66651430c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!73))))
      (a!88 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!6998)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!6999)
                                    a!73))))
      (a!105 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x401489672d167d27)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!73))))
      (a!115 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe5235514d8405c)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!73))))
      (a!132 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x40018d292a5d3212)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!73))))
      (a!155 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xbfcdfd195e96a441)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!73)))))
(let ((a!90 (fp.sub roundNearestTiesToEven
                    a!87
                    (fp.mul roundNearestTiesToEven
                            a!88
                            (fp.sub roundNearestTiesToEven
                                    a!89
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!106 (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) y0_ack!6997)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) h_ack!6999)
                             (fp.add roundNearestTiesToEven a!104 a!105)))))
(let ((a!91 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!6999)
                    (fp.add roundNearestTiesToEven
                            a!80
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401489672d167d27)
                                    a!90)))))
(let ((a!92 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!60 a!74)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb454949b1a0f2c)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!6998)
                                    a!91))))
      (a!107 (fp.mul roundNearestTiesToEven
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x4024000000000000)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!91))
                     (fp.sub roundNearestTiesToEven
                             (fp.mul roundNearestTiesToEven a!106 a!106)
                             ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!116 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven a!114 a!115)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fc43f7cc8023f22)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!91))))
      (a!133 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven a!131 a!132)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fc13b7d81af1344)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!91))))
      (a!156 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven a!154 a!155)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fc683d837559248)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!91)))))
(let ((a!108 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fc13b7d81af1344)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     a!106)
                             a!107)))
      (a!124 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fc683d837559248)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     a!106)
                             a!107)))
      (a!134 (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y0_ack!6997)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!133))))
      (a!136 (fp.mul roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y0_ack!6997)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!133))
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y0_ack!6997)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!133))))
      (a!147 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fc43f7cc8023f22)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     a!106)
                             a!107))))
(let ((a!109 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!98
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x40018d292a5d3212)
                                     a!90))
                     a!108))
      (a!125 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!123
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #xbfcdfd195e96a441)
                                     a!90))
                     a!124))
      (a!148 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!146
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3fe5235514d8405c)
                                     a!90))
                     a!147)))
(let ((a!110 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fa6c16c16c16c17)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!109))))
      (a!117 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xbfce7a5f94e7938d)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!109))))
      (a!135 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x4024000000000000)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!109))))
      (a!157 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x0000000000000000)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!109)))))
(let ((a!137 (fp.sub roundNearestTiesToEven
                     a!134
                     (fp.mul roundNearestTiesToEven
                             a!135
                             (fp.sub roundNearestTiesToEven
                                     a!136
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!158 (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) y0_ack!6997)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) h_ack!6999)
                             (fp.add roundNearestTiesToEven a!156 a!157)))))
(let ((a!138 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) h_ack!6999)
                     (fp.add roundNearestTiesToEven
                             a!125
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x0000000000000000)
                                     a!137)))))
(let ((a!139 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven a!116 a!117)
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fd0000000000000)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!138))))
      (a!159 (fp.mul roundNearestTiesToEven
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x4024000000000000)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) y1_ack!6998)
                                     a!138))
                     (fp.sub roundNearestTiesToEven
                             (fp.mul roundNearestTiesToEven a!158 a!158)
                             ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!140 (fp.abs (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) h_ack!6999)
                             (fp.sub roundNearestTiesToEven
                                     (fp.add roundNearestTiesToEven a!92 a!110)
                                     a!139))))
      (a!141 (fp.abs (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y0_ack!6997)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!139))))
      (a!160 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fd0000000000000)
                     (fp.sub roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     a!158)
                             a!159))))
(let ((a!161 (fp.add roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             a!148
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #xbfce7a5f94e7938d)
                                     a!137))
                     a!160)))
(let ((a!162 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) h_ack!6999)
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) y1_ack!6998)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) h_ack!6999)
                                     a!161)))))
(let ((a!163 (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x0000000000000000)
                     (fp.add roundNearestTiesToEven
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3ff0000000000000)
                                     a!141)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x0000000000000000)
                                     (fp.abs a!162))))))
  (FPCHECK_FDIV_ACCURACY
    a!140
    (fp.abs (fp.add roundNearestTiesToEven
                    a!163
                    ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
(exit)
