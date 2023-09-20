(declare-fun t_ack!2558 () (_ BitVec 64))
(declare-fun t1_ack!2559 () (_ BitVec 64))
(declare-fun h_ack!2562 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2560 () (_ BitVec 64))
(declare-fun y1_ack!2561 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2559)
                    ((_ to_fp 11 53) t_ack!2558))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2559)
               ((_ to_fp 11 53) t_ack!2558))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!2562) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!2559)
                ((_ to_fp 11 53) t_ack!2558))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!2562)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2559)
               ((_ to_fp 11 53) t_ack!2558))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!2561))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!2560)
                                   ((_ to_fp 11 53) y0_ack!2560))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!2559)
                           ((_ to_fp 11 53) t_ack!2558)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2560))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2560)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2561)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2560))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2560)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2561)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2560)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!2561)))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!2560))
                            a!1)))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!2560))
                            a!1))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2561)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!2561))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2561)
                                    a!5)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!2559)
                           ((_ to_fp 11 53) t_ack!2558))
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb0000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!7)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2560)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!2559)
                                    ((_ to_fp 11 53) t_ack!2558))
                            a!11))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd4000000000000)
                           ((_ to_fp 11 53) y1_ack!2561))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff2c00000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2561)
                                   a!8))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2561)
                                    a!8))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!12 a!12)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa0000000000000)
                            ((_ to_fp 11 53) y1_ack!2561))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2561)
                                    a!8)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb8000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)
                            a!13)))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff2c00000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)
                            a!13)))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2560)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!2559)
                                    ((_ to_fp 11 53) t_ack!2558))
                            a!19))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2561)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!2559)
                                    ((_ to_fp 11 53) t_ack!2558))
                            (fp.add roundNearestTiesToEven a!10 a!14)))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!2559)
                            ((_ to_fp 11 53) t_ack!2558))
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff2c00000000000)
                                    a!15))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!15)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!20 a!20)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!2559)
                            ((_ to_fp 11 53) t_ack!2558))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!17 a!18)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff2c00000000000)
                                    a!21))))
      (a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!2560)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!2560)
                                    a!16))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2561)
                                    a!22))
                    a!23)))
(let ((a!25 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!2560)
                                    a!16))
                    a!24)))
  (FPCHECK_FMUL_ACCURACY #x3fc3333333333333 a!25)))))))))))))

(check-sat)
(exit)
