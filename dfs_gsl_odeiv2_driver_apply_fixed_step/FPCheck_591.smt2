(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!2149 () (_ BitVec 64))
(declare-fun h_ack!2150 () (_ BitVec 64))
(declare-fun y0_ack!2148 () (_ BitVec 64))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2150)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2150)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!2150)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!2149))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!2148)
                                   ((_ to_fp 11 53) y0_ack!2148))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2148))
                           a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2148)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2149)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2148)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2149)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2148)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2149)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!2148))
                            a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2148)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!2149)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2149)
                                   a!5))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2149)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2148)
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2149)
                                    a!5)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2149)
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.sub roundNearestTiesToEven a!7 a!9)))))
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
                    ((_ to_fp 11 53) y0_ack!2148)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2150)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2149)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!2150)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2149)
                                    a!15)
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    (fp.sub roundNearestTiesToEven a!7 a!9)))
                    (fp.mul roundNearestTiesToEven a!2 a!12))))
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
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            a!3
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
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!14)
                            a!20))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!1 a!18))
                            a!21))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            a!22
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!19 a!19)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!2150)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!1 a!18))
                            (fp.mul roundNearestTiesToEven a!3 a!23)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven a!14 a!24)
    (fp.add roundNearestTiesToEven a!14 a!24)))))))))))))))

(check-sat)
(exit)
