(declare-fun t_ack!4698 () (_ BitVec 64))
(declare-fun t1_ack!4699 () (_ BitVec 64))
(declare-fun h_ack!4702 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4700 () (_ BitVec 64))
(declare-fun y1_ack!4701 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4699)
                    ((_ to_fp 11 53) t_ack!4698))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4699)
               ((_ to_fp 11 53) t_ack!4698))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4702) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4699)
                ((_ to_fp 11 53) t_ack!4698))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4702)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4699)
               ((_ to_fp 11 53) t_ack!4698))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!4701))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!4700)
                                   ((_ to_fp 11 53) y0_ack!4700))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!4699)
                           ((_ to_fp 11 53) t_ack!4698)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4700))
                           a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4700))
                           a!1)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4700))
                           a!1)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4700)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!4701)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4700)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!4701)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4700)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!4701)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4700))
                            a!1)))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa3333333333333)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4700))
                            a!1))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!4701))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4701)
                                   a!4))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4701)
                                    a!4))
                    (fp.sub roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!4700)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!4699)
                                   ((_ to_fp 11 53) t_ack!4698))
                           a!5)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!4699)
                            ((_ to_fp 11 53) t_ack!4698))
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb0000000000000)
                                    (fp.sub roundNearestTiesToEven a!8 a!10))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4701)
                                    a!11))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!6 a!6)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa0000000000000)
                            ((_ to_fp 11 53) y1_ack!4701))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4701)
                                    a!11))))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd4000000000000)
                            ((_ to_fp 11 53) y1_ack!4701))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4701)
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
                    ((_ to_fp 11 53) y0_ack!4700)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4699)
                                    ((_ to_fp 11 53) t_ack!4698))
                            a!17))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!4701)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4699)
                                    ((_ to_fp 11 53) t_ack!4698))
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
                            ((_ to_fp 11 53) t1_ack!4699)
                            ((_ to_fp 11 53) t_ack!4698))
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff2c00000000000)
                                    a!14)))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!4699)
                            ((_ to_fp 11 53) t_ack!4698))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!15 a!16)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff2c00000000000)
                                    a!19))))
      (a!25 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4700)
                                    a!24)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4700)
                                    a!24))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                                    ((_ to_fp 11 53) y1_ack!4701))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe44bc269b358dd)
                                    a!14))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfc4a21f44e45fd3)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4701)
                                    a!20))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4701)
                                    a!20))
                    a!25)))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!4700)
                                    a!24))
                    a!26)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc8000000000000)
                                    a!19))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc3333333333333)
                            a!27))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!4701)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4699)
                                    ((_ to_fp 11 53) t_ack!4698))
                            a!28))))
  (FPCHECK_FADD_ACCURACY
    a!21
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fc1bf4b185a5c0b) a!29))))))))))))))))

(check-sat)
(exit)
