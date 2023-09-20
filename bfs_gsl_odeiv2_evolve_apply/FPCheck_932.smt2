(declare-fun t_ack!4444 () (_ BitVec 64))
(declare-fun t1_ack!4445 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!4447 () (_ BitVec 64))
(declare-fun h_ack!4448 () (_ BitVec 64))
(declare-fun y0_ack!4446 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4445)
                    ((_ to_fp 11 53) t_ack!4444))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4445)
                    ((_ to_fp 11 53) t_ack!4444))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!4445)
                     ((_ to_fp 11 53) t_ack!4444))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4445)
                    ((_ to_fp 11 53) t_ack!4444))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!4447))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!4446)
                                   ((_ to_fp 11 53) y0_ack!4446))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!4446)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!4448))
                           ((_ to_fp 11 53) y1_ack!4447)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4446))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!4448))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4446))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4446))
                           a!1)))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4446))
                            a!1)))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa3333333333333)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4446))
                            a!1)))
      (a!30 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa887ad701404ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4446))
                            a!1)))
      (a!39 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f9152f31366e4d8)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4446))
                            a!1)))
      (a!49 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4446))
                            a!1)))
      (a!63 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc77ecbb1301621)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4446))
                            a!1)))
      (a!77 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff372614b1764cf)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4446))
                            a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!4447))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4447)
                                   a!3))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4447)
                                   a!3))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!7)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4446)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!4448)
                                   a!4))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7)
                           a!8)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!4))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!4)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!4447)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!4448)
                            (fp.add roundNearestTiesToEven a!6 a!9)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!10)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4448)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa0000000000000)
                                    ((_ to_fp 11 53) y1_ack!4447))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!10)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4448)
                    (fp.add roundNearestTiesToEven
                            a!2
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!12))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4446)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4446)
                                    a!16))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd0912d609427e0)
                            ((_ to_fp 11 53) y1_ack!4447))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xc0131912cd3f9270)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!13))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!13))
                    a!17))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd4000000000000)
                                    ((_ to_fp 11 53) y1_ack!4447))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!10))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!13))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa3333333333333)
                            ((_ to_fp 11 53) y1_ack!4447))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!13))))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa887ad701404ac)
                            ((_ to_fp 11 53) y1_ack!4447))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!13))))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f9152f31366e4d8)
                            ((_ to_fp 11 53) y1_ack!4447))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!13))))
      (a!67 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                            ((_ to_fp 11 53) y1_ack!4447))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfe44bc269b358dd)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!13))))
      (a!83 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc77ecbb1301621)
                            ((_ to_fp 11 53) y1_ack!4447))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xc003c0097b3c5a32)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!13)))))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4446)
                                    a!16))
                    a!18))
      (a!24 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!23))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!23))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!23)))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!12))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            a!19))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfdbd8905e38fcd7)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!20))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!20))))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc3333333333333)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!20))))
      (a!42 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!20))))
      (a!54 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!20))))
      (a!68 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc4a21f44e45fd3)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!20))))
      (a!84 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfd2a471c23b2d29)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!20)))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            a!25
                            (fp.sub roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4446)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!4448)
                            (fp.add roundNearestTiesToEven a!32 a!33)))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc8000000000000)
                                    a!19))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc3333333333333)
                            a!27)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!30
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                                    a!19))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                            a!27)))
      (a!40 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!39
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                                    a!19))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                            a!27)))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!49
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe44bc269b358dd)
                                    a!19))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc4a21f44e45fd3)
                            a!27)))
      (a!64 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!63
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc003c0097b3c5a32)
                                    a!19))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfd2a471c23b2d29)
                            a!27)))
      (a!78 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!77
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030ac3014df3e48)
                                    a!19))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fed4dc1ce9424ac)
                            a!27))))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc00865578467943f)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!28))))
      (a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!28))))
      (a!43 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!28))))
      (a!55 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!28))))
      (a!69 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc1bf4b185a5c0b)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!28))))
      (a!85 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf9b1bbe5082a5c1)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!28)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!34)
                    (fp.mul roundNearestTiesToEven
                            a!35
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!34 a!34)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!44 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4446)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!4448)
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!41 a!42)
                                    a!43)))))
(let ((a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4448)
                    (fp.add roundNearestTiesToEven
                            a!31
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                                    a!36)))))
(let ((a!38 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!14 a!21)
                            a!29)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x40164fca455cea0c)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!37))))
      (a!45 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!37))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!44 a!44)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!56 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!53 a!54)
                            a!55)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!37))))
      (a!70 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!67 a!68)
                            a!69)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee1c165324ef0a)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!37))))
      (a!86 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!83 a!84)
                            a!85)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4006c85fb0a3e9bf)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!37)))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!44)
                            a!45)))
      (a!51 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fee1c165324ef0a)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!44)
                            a!45)))
      (a!57 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!56))))
      (a!59 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!56))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!56))))
      (a!65 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4006c85fb0a3e9bf)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!44)
                            a!45)))
      (a!79 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc03000ea32f607ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!44)
                            a!45))))
(let ((a!47 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!40
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                                    a!36))
                    a!46))
      (a!52 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!50
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc1bf4b185a5c0b)
                                    a!36))
                    a!51))
      (a!66 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!64
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf9b1bbe5082a5c1)
                                    a!36))
                    a!65))
      (a!80 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!78
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc01839f6df39ea9c)
                                    a!36))
                    a!79)))
(let ((a!48 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x40189f9250f88c23)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!47))))
      (a!58 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!47))))
      (a!71 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fcb16e62e7158fc)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!47))))
      (a!87 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd20240028afd67)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!47)))))
(let ((a!60 (fp.sub roundNearestTiesToEven
                    a!57
                    (fp.mul roundNearestTiesToEven
                            a!58
                            (fp.sub roundNearestTiesToEven
                                    a!59
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!72 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4446)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!4448)
                            (fp.add roundNearestTiesToEven a!70 a!71)))))
(let ((a!61 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4448)
                    (fp.add roundNearestTiesToEven
                            a!52
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fcb16e62e7158fc)
                                    a!60)))))
(let ((a!62 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!38 a!48)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xc0143f985843ddf3)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!61))))
      (a!73 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!61))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!72 a!72)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!88 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!86 a!87)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbfadbee9f5b0f4)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!61)))))
(let ((a!74 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fbfadbee9f5b0f4)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!72)
                            a!73)))
      (a!81 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc02abe3f2cbe1d36)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!72)
                            a!73)))
      (a!89 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!88))))
      (a!91 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!88))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!4446)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!88)))))
(let ((a!75 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!66
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd20240028afd67)
                                    a!60))
                    a!74))
      (a!82 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!80
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402db2d7daa814a6)
                                    a!60))
                    a!81)))
(let ((a!76 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x40018d292a5d3212)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!75))))
      (a!90 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!4447)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!4448)
                                    a!75)))))
(let ((a!92 (fp.sub roundNearestTiesToEven
                    a!89
                    (fp.mul roundNearestTiesToEven
                            a!90
                            (fp.sub roundNearestTiesToEven
                                    a!91
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!93 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!4448)
                    (fp.add roundNearestTiesToEven
                            a!82
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401489672d167d27)
                                    a!92)))))
(let ((a!94 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!62 a!76)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc13b7d81af1344)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4447)
                                    a!93)))))
  (FPCHECK_FSUB_ACCURACY
    #x8000000000000000
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) y0_ack!4446)
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) h_ack!4448) a!94)))))))))))))))))))))))))))))))))

(check-sat)
(exit)
