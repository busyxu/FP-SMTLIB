(declare-fun t_ack!9397 () (_ BitVec 64))
(declare-fun t1_ack!9398 () (_ BitVec 64))
(declare-fun h_ack!9401 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!9399 () (_ BitVec 64))
(declare-fun y1_ack!9400 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9398)
                    ((_ to_fp 11 53) t_ack!9397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9398)
                    ((_ to_fp 11 53) t_ack!9397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9398)
                ((_ to_fp 11 53) t_ack!9397))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9401)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9398)
                    ((_ to_fp 11 53) t_ack!9397)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9398)
                    ((_ to_fp 11 53) t_ack!9397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!9400))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!9399)
                                   ((_ to_fp 11 53) y0_ack!9399))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!9399)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!9401))
                           ((_ to_fp 11 53) y1_ack!9400)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!9399))
                           a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!9401))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!9399))
                           a!1)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!9399))
                           a!1))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!9400)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!9400))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!9400)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!5)))
      (a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!9399)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!9401)
                                    a!9))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!9399)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!9401)
                                    a!9))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!9399)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!9401)
                                    a!9)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!9400)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!9401)
                           (fp.add roundNearestTiesToEven a!2 a!6)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!7)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!9401)
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!12)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd4000000000000)
                                    ((_ to_fp 11 53) y1_ack!9400))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!9400)
                                    a!13)))))
  (FPCHECK_FSUB_ACCURACY
    #x8000000000000000
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) y0_ack!9399)
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) h_ack!9401) a!14))))))))))))

(check-sat)
(exit)
