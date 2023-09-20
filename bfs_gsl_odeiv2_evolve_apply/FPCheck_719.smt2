(declare-fun t_ack!3409 () (_ BitVec 64))
(declare-fun t1_ack!3410 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3411 () (_ BitVec 64))
(declare-fun y1_ack!3412 () (_ BitVec 64))
(declare-fun h_ack!3413 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3410)
                    ((_ to_fp 11 53) t_ack!3409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3410)
                    ((_ to_fp 11 53) t_ack!3409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!3410)
                     ((_ to_fp 11 53) t_ack!3409))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3410)
                    ((_ to_fp 11 53) t_ack!3409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!3412))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!3411)
                                   ((_ to_fp 11 53) y0_ack!3411))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!3411)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!3413))
                           ((_ to_fp 11 53) y1_ack!3412)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!3411))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!3413))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!3411))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!3411))
                           a!1)))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!3411))
                            a!1)))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa3333333333333)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!3411))
                            a!1)))
      (a!30 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa887ad701404ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!3411))
                            a!1)))
      (a!39 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f9152f31366e4d8)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!3411))
                            a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!3412))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!3412)
                                   a!3))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!3412)
                                   a!3))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!7)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!3411)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!3413)
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
                            ((_ to_fp 11 53) y0_ack!3411)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!4))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!3411)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!4)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!3412)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!3413)
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
                    ((_ to_fp 11 53) h_ack!3413)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa0000000000000)
                                    ((_ to_fp 11 53) y1_ack!3412))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!10)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!3413)
                    (fp.add roundNearestTiesToEven
                            a!2
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!12))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!3411)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!3411)
                                    a!16))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff372614b1764cf)
                            ((_ to_fp 11 53) y1_ack!3412))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4030ac3014df3e48)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3412)
                                    a!13))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3412)
                                    a!13))
                    a!17))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd4000000000000)
                                    ((_ to_fp 11 53) y1_ack!3412))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!10))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3412)
                                    a!13))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa3333333333333)
                            ((_ to_fp 11 53) y1_ack!3412))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3412)
                                    a!13))))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa887ad701404ac)
                            ((_ to_fp 11 53) y1_ack!3412))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3412)
                                    a!13)))))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!3411)
                                    a!16))
                    a!18))
      (a!24 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!3411)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!23))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!3411)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!23))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!3411)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
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
                    ((_ to_fp 11 53) #x3fed4dc1ce9424ac)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!3412)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!20))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!3412)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!20))))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc3333333333333)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!3412)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!20))))
      (a!42 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!3412)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!20)))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            a!25
                            (fp.sub roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!3411)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!3413)
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
                            a!27))))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc01839f6df39ea9c)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!3412)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!28))))
      (a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!3412)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!28))))
      (a!43 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!3412)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
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
                    ((_ to_fp 11 53) y0_ack!3411)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!3413)
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!41 a!42)
                                    a!43)))))
(let ((a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!3413)
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
                            ((_ to_fp 11 53) #xc03000ea32f607ac)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3412)
                                    a!37))))
      (a!45 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3412)
                                    a!37))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!44 a!44)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
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
                    a!46)))
(let ((a!48 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x402db2d7daa814a6)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!3412)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!3413)
                                    a!47)))))
  (FPCHECK_FADD_ACCURACY a!38 a!48))))))))))))))))))))))

(check-sat)
(exit)
