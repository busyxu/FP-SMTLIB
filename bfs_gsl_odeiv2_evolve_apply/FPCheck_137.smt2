(declare-fun t_ack!643 () (_ BitVec 64))
(declare-fun t1_ack!644 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!645 () (_ BitVec 64))
(declare-fun y1_ack!646 () (_ BitVec 64))
(declare-fun h_ack!647 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!644)
                    ((_ to_fp 11 53) t_ack!643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!644)
                    ((_ to_fp 11 53) t_ack!643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!644)
                     ((_ to_fp 11 53) t_ack!643))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!644)
                    ((_ to_fp 11 53) t_ack!643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!646))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!645)
                                   ((_ to_fp 11 53) y0_ack!645))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!645)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!647))
                           ((_ to_fp 11 53) y1_ack!646)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!647))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!645))
                           a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!645))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!646))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!646)
                                   a!2))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!646)
                                   a!2))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!6 a!6)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!645)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!647)
                                   a!3))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6)
                           a!7)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!645)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!647)
                                    a!3))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!645)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!647)
                                    a!3)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!646)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!647)
                                   (fp.add roundNearestTiesToEven a!5 a!8))))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    a!4
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FMUL_ACCURACY #x3fb8000000000000 a!11))))))))

(check-sat)
(exit)
