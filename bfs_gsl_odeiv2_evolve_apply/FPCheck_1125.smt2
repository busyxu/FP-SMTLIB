(declare-fun t_ack!5388 () (_ BitVec 64))
(declare-fun t1_ack!5389 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5390 () (_ BitVec 64))
(declare-fun y1_ack!5391 () (_ BitVec 64))
(declare-fun h_ack!5392 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5389)
                    ((_ to_fp 11 53) t_ack!5388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5389)
                    ((_ to_fp 11 53) t_ack!5388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!5389)
                     ((_ to_fp 11 53) t_ack!5388))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5389)
                    ((_ to_fp 11 53) t_ack!5388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!5391))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!5390)
                                   ((_ to_fp 11 53) y0_ack!5390))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!5390)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!5392))
                           ((_ to_fp 11 53) y1_ack!5391)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa3333333333333)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!5390))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!5390))
                           a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!5392))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!5390))
                           a!1)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!5390))
                            a!1)))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!5390))
                            a!1)))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa887ad701404ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!5390))
                            a!1)))
      (a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f9152f31366e4d8)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!5390))
                            a!1)))
      (a!47 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!5390))
                            a!1)))
      (a!61 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc77ecbb1301621)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!5390))
                            a!1))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!5391)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!5391))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
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
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!11))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!11))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!11)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!5391)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!5392)
                           (fp.add roundNearestTiesToEven a!3 a!7)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) h_ack!5392)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fa0000000000000)
                                   ((_ to_fp 11 53) y1_ack!5391))
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
                    ((_ to_fp 11 53) h_ack!5392)
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!14))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!5390)
                                    a!9)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!5390)
                                    a!9))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!15))
                    a!16))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd4000000000000)
                                    ((_ to_fp 11 53) y1_ack!5391))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!15))))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa3333333333333)
                            ((_ to_fp 11 53) y1_ack!5391))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!15))))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa887ad701404ac)
                            ((_ to_fp 11 53) y1_ack!5391))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!15))))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f9152f31366e4d8)
                            ((_ to_fp 11 53) y1_ack!5391))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!15))))
      (a!65 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                            ((_ to_fp 11 53) y1_ack!5391))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfe44bc269b358dd)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!15)))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!5390)
                                    a!9))
                    a!17))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!19))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!19))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
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
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!22))))
      (a!31 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc3333333333333)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!22))))
      (a!40 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!22))))
      (a!52 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!22))))
      (a!66 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc4a21f44e45fd3)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!22)))))
(let ((a!25 (fp.sub roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    a!24
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!5390)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!5392)
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
                            a!25))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfac643f63bea075)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!26))))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!26))))
      (a!41 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!26))))
      (a!53 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!26))))
      (a!67 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc1bf4b185a5c0b)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
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
                    ((_ to_fp 11 53) y0_ack!5390)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!5392)
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!39 a!40)
                                    a!41)))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!5392)
                    (fp.add roundNearestTiesToEven
                            a!29
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                                    a!34)))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa55fed5a492d16)
                                    ((_ to_fp 11 53) y1_ack!5391))
                            a!27)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fcea1cd5438b4f0)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!35))))
      (a!43 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
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
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!35))))
      (a!68 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!65 a!66)
                            a!67)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee1c165324ef0a)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
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
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!54))))
      (a!57 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!54))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!5390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!54))))
      (a!63 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4006c85fb0a3e9bf)
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
                    a!63)))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe68328ceaf3204)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!45))))
      (a!56 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!45))))
      (a!69 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fcb16e62e7158fc)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!45)))))
(let ((a!58 (fp.sub roundNearestTiesToEven
                    a!55
                    (fp.mul roundNearestTiesToEven
                            a!56
                            (fp.sub roundNearestTiesToEven
                                    a!57
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!70 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!5390)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!5392)
                            (fp.add roundNearestTiesToEven a!68 a!69)))))
(let ((a!59 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!5392)
                    (fp.add roundNearestTiesToEven
                            a!50
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fcb16e62e7158fc)
                                    a!58)))))
(let ((a!60 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!36 a!46)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfe84ff364c4f34c)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!59))))
      (a!71 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!5391)
                                    a!59))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!70 a!70)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!72 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fbfadbee9f5b0f4)
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
                    a!72)))
(let ((a!74 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe5235514d8405c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!5391)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!5392)
                                    a!73)))))
  (FPCHECK_FADD_ACCURACY a!60 a!74))))))))))))))))))))))))))))

(check-sat)
(exit)
