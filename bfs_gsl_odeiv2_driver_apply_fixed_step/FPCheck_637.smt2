(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2344 () (_ BitVec 64))
(declare-fun y1_ack!2345 () (_ BitVec 64))
(declare-fun h_ack!2346 () (_ BitVec 64))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2346)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!2345))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!2344)
                                   ((_ to_fp 11 53) y0_ack!2344))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2346)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2346)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2344))
                           a!2)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2344)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2345)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2344))
                           a!2)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2344)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2345)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2344)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) y1_ack!2345))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2345)
                                   a!7))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2344)
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2345)
                                    a!7))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!2344)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) y1_ack!2345)))
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2345)
                                    a!7)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2345)
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
                    ((_ to_fp 11 53) y0_ack!2344)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2346)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2345)
                                    a!3)
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.sub roundNearestTiesToEven a!6 a!9)))
                    (fp.mul roundNearestTiesToEven a!4 a!12)))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2345)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2346)
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
                                    ((_ to_fp 11 53) h_ack!2346)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!26))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!1 a!16))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2346)
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
(let ((a!32 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!25
                                    (fp.mul roundNearestTiesToEven a!4 a!28))
                            (fp.mul roundNearestTiesToEven a!1 a!31)))))
  (FPCHECK_FMUL_UNDERFLOW
    a!32
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!34 a!34)
            ((_ to_fp 11 53) #x3ff0000000000000))))))))))))))))))))

(check-sat)
(exit)
