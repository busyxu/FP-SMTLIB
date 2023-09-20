(declare-fun t_ack!4491 () (_ BitVec 64))
(declare-fun t1_ack!4492 () (_ BitVec 64))
(declare-fun h_ack!4495 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!4494 () (_ BitVec 64))
(declare-fun y0_ack!4493 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4492)
                    ((_ to_fp 11 53) t_ack!4491))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4492)
               ((_ to_fp 11 53) t_ack!4491))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4495) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4492)
                ((_ to_fp 11 53) t_ack!4491))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4495)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4492)
               ((_ to_fp 11 53) t_ack!4491))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!4494))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!4493)
                                   ((_ to_fp 11 53) y0_ack!4493))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!4492)
                           ((_ to_fp 11 53) t_ack!4491)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4493))
                           a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4493))
                           a!1)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4493))
                           a!1)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4493)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!4494)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4493)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!4494)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4493)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!4494)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4493))
                            a!1)))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa3333333333333)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4493))
                            a!1)))
      (a!30 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa887ad701404ac)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4493))
                            a!1)))
      (a!38 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f9152f31366e4d8)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4493))
                            a!1))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!4494))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4494)
                                   a!4))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!4))
                    (fp.sub roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!4493)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!4492)
                                   ((_ to_fp 11 53) t_ack!4491))
                           a!5)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!4492)
                            ((_ to_fp 11 53) t_ack!4491))
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb0000000000000)
                                    (fp.sub roundNearestTiesToEven a!8 a!10))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!11))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!6 a!6)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa0000000000000)
                            ((_ to_fp 11 53) y1_ack!4494))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!11))))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd4000000000000)
                            ((_ to_fp 11 53) y1_ack!4494))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!11)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb8000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            a!12)))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff2c00000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            a!12)))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4493)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4492)
                                    ((_ to_fp 11 53) t_ack!4491))
                            a!17))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!4494)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4492)
                                    ((_ to_fp 11 53) t_ack!4491))
                            (fp.add roundNearestTiesToEven a!2 a!13)))))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!18)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!14)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!18 a!18)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!4492)
                            ((_ to_fp 11 53) t_ack!4491))
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff2c00000000000)
                                    a!14)))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!4492)
                            ((_ to_fp 11 53) t_ack!4491))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!15 a!16)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff2c00000000000)
                                    a!19))))
      (a!25 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4493)
                                    a!24)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4493)
                                    a!24))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f9152f31366e4d8)
                                    ((_ to_fp 11 53) y1_ack!4494))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                                    a!14))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!20))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!20))
                    a!25))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa3333333333333)
                                    ((_ to_fp 11 53) y1_ack!4494))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc8000000000000)
                                    a!14))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc3333333333333)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!20))))
      (a!40 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa887ad701404ac)
                                    ((_ to_fp 11 53) y1_ack!4494))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                                    a!14))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!20)))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4493)
                                    a!24))
                    a!26))
      (a!33 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4493)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4492)
                                    ((_ to_fp 11 53) t_ack!4491))
                            a!32))))
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
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!38
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd8d28195fa13c2)
                                    a!19))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa26ba035d10b6d)
                            a!27))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!4494)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4492)
                                    ((_ to_fp 11 53) t_ack!4491))
                            a!28))))
(let ((a!34 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!33)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!29)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!33 a!33)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!41 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!4492)
                            ((_ to_fp 11 53) t_ack!4491))
                    (fp.add roundNearestTiesToEven
                            a!40
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                                    a!29)))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!4492)
                            ((_ to_fp 11 53) t_ack!4491))
                    (fp.add roundNearestTiesToEven
                            a!31
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                                    a!34))))
      (a!42 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4493)
                                    a!41)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4493)
                                    a!41))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                                    a!29))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!35))))
      (a!43 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4494)
                                    a!35))
                    a!42)))
(let ((a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4493)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4492)
                                    ((_ to_fp 11 53) t_ack!4491))
                            a!36)))
      (a!44 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4493)
                                    a!41))
                    a!43)))
(let ((a!45 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!39
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc93651ea2bd3c4)
                                    a!34))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc61b7ccdaf2f38)
                            a!44))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!4494)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4492)
                                    ((_ to_fp 11 53) t_ack!4491))
                            a!45))))
  (FPCHECK_FSUB_ACCURACY
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!37)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    a!46)
            (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!37 a!37)
                    ((_ to_fp 11 53) #x3ff0000000000000))))))))))))))))))))))))

(check-sat)
(exit)
