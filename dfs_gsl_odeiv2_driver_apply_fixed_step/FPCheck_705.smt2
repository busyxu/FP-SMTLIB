(declare-fun y1_ack!2711 () (_ BitVec 64))
(declare-fun h_ack!2712 () (_ BitVec 64))
(declare-fun y0_ack!2710 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!2711))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!2710)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) y1_ack!2711))))
      (a!33 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) h_ack!2712))
                            ((_ to_fp 11 53) y1_ack!2711)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2711)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2711)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2711)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!2710))
                            a!4)))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            ((_ to_fp 11 53) h_ack!2712))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!2710))
                            a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!2711)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2711)
                                   a!5))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2711)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!5))))
      (a!32 (fp.add roundNearestTiesToEven
                    a!30
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4008000000000000))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!31))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!31))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!33 a!33)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) h_ack!2712))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!31)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2711)
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.sub roundNearestTiesToEven a!7 a!9))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            ((_ to_fp 11 53) h_ack!2712))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!33)
                            a!34))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!10)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!11 a!11)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)))
      (a!36 (fp.add roundNearestTiesToEven
                    a!32
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4008000000000000))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!35))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!35))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!37 a!37)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2711)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!15)
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    (fp.sub roundNearestTiesToEven a!7 a!9)))
                    (fp.mul roundNearestTiesToEven a!2 a!12)))
      (a!39 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!2712)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!37)
                            a!38))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!6
                            (fp.mul roundNearestTiesToEven a!2 a!10))
                    (fp.mul roundNearestTiesToEven a!1 a!13)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!13)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!17 a!17)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!40 (fp.add roundNearestTiesToEven
                    a!36
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!39)))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!1 a!18)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!1 a!18)))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!14 a!14)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!23 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!1 a!18))))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!14)
                            a!20)))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!14)
                            a!20))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!1 a!18))
                    a!21)))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!23)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!22)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!23 a!23)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    (fp.mul roundNearestTiesToEven a!3 a!22))
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    (fp.mul roundNearestTiesToEven a!3 a!22)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!1 a!18))
                    (fp.mul roundNearestTiesToEven a!3 a!24)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!1 a!18))
                            a!42)
                    (fp.mul roundNearestTiesToEven a!2 a!24))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    (fp.mul roundNearestTiesToEven a!3 a!22)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!25)
                            a!26)))
      (a!44 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!25))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!1 a!18))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!27))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!19
                                    (fp.mul roundNearestTiesToEven a!2 a!22))
                            (fp.mul roundNearestTiesToEven a!2 a!25))
                    (fp.mul roundNearestTiesToEven a!1 a!28)))
      (a!45 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!44)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!28)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!44 a!44)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!41 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    (fp.sub roundNearestTiesToEven a!29 a!40))
                            ((_ to_fp 11 53) #x402e000000000000))))
      (a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!2712)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!43
                                    (fp.mul roundNearestTiesToEven a!2 a!27))
                            (fp.mul roundNearestTiesToEven a!1 a!45)))))
(let ((a!47 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e45798ee2308c3a)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.abs a!29))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.abs a!46))))))
(let ((a!48 (fp.div roundNearestTiesToEven
                    a!41
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!47
                                    ((_ to_fp 11 53) #x3e45798ee2308c3a))))))
  (fp.gt a!48 ((_ to_fp 11 53) #x0010000000000000)))))))))))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!2711))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!2710)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           a!2)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           a!2)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2711)
                                   a!7))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!7))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!2710)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) y1_ack!2711)))
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!7)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2711)
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.sub roundNearestTiesToEven a!6 a!9)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!11)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!10)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!3)
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.sub roundNearestTiesToEven a!6 a!9)))
                    (fp.mul roundNearestTiesToEven a!4 a!12)))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2711)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!15)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!14 a!14)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!4 a!11))
                    (fp.mul roundNearestTiesToEven a!1 a!15))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16)))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!18 a!18)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16)))))
      (a!33 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19)))
      (a!22 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    a!22)))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!21)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!23)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!21 a!21)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!27 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23))
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16))
                            a!20)
                    (fp.mul roundNearestTiesToEven a!4 a!24)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    (fp.mul roundNearestTiesToEven a!5 a!24))))
(let ((a!28 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!26)
                            a!27)))
      (a!29 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!26))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!28))))
(let ((a!31 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!29)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!30)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!29 a!29)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!33
                                    (fp.mul roundNearestTiesToEven a!4 a!23))
                            (fp.mul roundNearestTiesToEven a!4 a!26))
                    (fp.mul roundNearestTiesToEven a!1 a!30))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.mul roundNearestTiesToEven a!4 a!28))
                    (fp.mul roundNearestTiesToEven a!1 a!31))))
(let ((a!35 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!34)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!32)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!34 a!34)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!36 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    a!35)))))
(let ((a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e45798ee2308c3a)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.abs a!32))
                            a!36))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!37
                         ((_ to_fp 11 53) #x3e45798ee2308c3a))
                 a!37)
         ((_ to_fp 11 53) #x3e45798ee2308c3a))))))))))))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!2711))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!2710)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           a!2)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           a!2)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2711)
                                   a!7))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!7))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!2710)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) y1_ack!2711)))
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!7)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2711)
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.sub roundNearestTiesToEven a!6 a!9)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!11)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!10)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!3)
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.sub roundNearestTiesToEven a!6 a!9)))
                    (fp.mul roundNearestTiesToEven a!4 a!12)))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2711)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!15)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!14 a!14)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!4 a!11))
                    (fp.mul roundNearestTiesToEven a!1 a!15))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16)))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!18 a!18)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16)))))
      (a!33 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19)))
      (a!22 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    a!22)))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!21)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!23)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!21 a!21)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!27 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23))
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16))
                            a!20)
                    (fp.mul roundNearestTiesToEven a!4 a!24)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    (fp.mul roundNearestTiesToEven a!5 a!24))))
(let ((a!28 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!26)
                            a!27)))
      (a!29 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!26))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!28))))
(let ((a!31 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!29)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!30)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!29 a!29)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!33
                                    (fp.mul roundNearestTiesToEven a!4 a!23))
                            (fp.mul roundNearestTiesToEven a!4 a!26))
                    (fp.mul roundNearestTiesToEven a!1 a!30))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.mul roundNearestTiesToEven a!4 a!28))
                    (fp.mul roundNearestTiesToEven a!1 a!31))))
(let ((a!35 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!34)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!32)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!34 a!34)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!36 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    a!35)))))
(let ((a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e45798ee2308c3a)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.abs a!32))
                            a!36))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!37
                         ((_ to_fp 11 53) #x3e45798ee2308c3a))
                 ((_ to_fp 11 53) #x3e45798ee2308c3a))
         a!37)))))))))))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!2711))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!2710)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2712)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) h_ack!2712))
                            ((_ to_fp 11 53) y1_ack!2711)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           a!2)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2710))
                           a!2)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2710)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2711)))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!2712)
                            ((_ to_fp 11 53) #x4018000000000000))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!2710))
                            a!2)))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            ((_ to_fp 11 53) h_ack!2712))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!2710))
                            a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2711)
                                   a!7))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!7))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!2710)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) y1_ack!2711)))
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!7))))
      (a!36 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!35))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!34 a!34)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!38 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) h_ack!2712))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!35)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2711)
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.sub roundNearestTiesToEven a!6 a!9))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!2712)
                            ((_ to_fp 11 53) #x4008000000000000))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!34)
                            a!36)))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            ((_ to_fp 11 53) h_ack!2712))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!34)
                            a!36))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!11)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!10)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11)))
      (a!40 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!39))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!38 a!38)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!43 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2710)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!2712)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!39)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!3)
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.sub roundNearestTiesToEven a!6 a!9)))
                    (fp.mul roundNearestTiesToEven a!4 a!12)))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2711)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)))
      (a!41 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!2712)
                            ((_ to_fp 11 53) #x4008000000000000))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!38)
                            a!40)))
      (a!44 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!2712)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!38)
                            a!40))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!15)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!14 a!14)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!4 a!11))
                    (fp.mul roundNearestTiesToEven a!1 a!15)))
      (a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!33)
                            a!37)
                    a!41))
      (a!45 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2711)
                                    a!44))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!43 a!43)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16)))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!18 a!18)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16)))))
      (a!46 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!2712)
                            ((_ to_fp 11 53) #x4018000000000000))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!43)
                            a!45)))
      (a!48 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19)))
      (a!22 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    a!22)))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!21)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!23)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!21 a!21)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!27 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23))
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!1 a!16))
                            a!20)
                    (fp.mul roundNearestTiesToEven a!4 a!24)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    (fp.mul roundNearestTiesToEven a!5 a!24))))
(let ((a!28 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!5 a!23)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!26)
                            a!27)))
      (a!29 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!26))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!28))))
(let ((a!31 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!29)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!30)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!29 a!29)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!48
                                    (fp.mul roundNearestTiesToEven a!4 a!23))
                            (fp.mul roundNearestTiesToEven a!4 a!26))
                    (fp.mul roundNearestTiesToEven a!1 a!30))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.mul roundNearestTiesToEven a!4 a!28))
                    (fp.mul roundNearestTiesToEven a!1 a!31))))
(let ((a!47 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!32
                                    (fp.add roundNearestTiesToEven a!42 a!46)))
                    ((_ to_fp 11 53) #x402e000000000000)))
      (a!50 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!49)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!32)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!49 a!49)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!51 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2712)
                                    a!50)))))
(let ((a!52 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e45798ee2308c3a)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.abs a!32))
                            a!51))))
  (FPCHECK_FDIV_INVALID
    (fp.abs a!47)
    (fp.abs (fp.add roundNearestTiesToEven
                    a!52
                    ((_ to_fp 11 53) #x3e45798ee2308c3a))))))))))))))))))))))))

(check-sat)
(exit)
