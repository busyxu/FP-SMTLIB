(declare-fun t_ack!1508 () (_ BitVec 64))
(declare-fun t1_ack!1509 () (_ BitVec 64))
(declare-fun h_ack!1512 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1511 () (_ BitVec 64))
(declare-fun y0_ack!1510 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1509)
                    ((_ to_fp 11 53) t_ack!1508))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1509)
               ((_ to_fp 11 53) t_ack!1508))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1512) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1509)
                ((_ to_fp 11 53) t_ack!1508))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1512)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1509)
               ((_ to_fp 11 53) t_ack!1508))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!1511))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!1510)
                                   ((_ to_fp 11 53) y0_ack!1510))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!1509)
                           ((_ to_fp 11 53) t_ack!1508)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1510))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1510)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1511)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1510))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1510)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1511)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1510)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1511))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1511)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!1509)
                           ((_ to_fp 11 53) t_ack!1508))
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb0000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!7))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0000000000000)
                           ((_ to_fp 11 53) y1_ack!1511))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb8000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1511)
                                   a!8)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!1510)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!1509)
                                    ((_ to_fp 11 53) t_ack!1508))
                            a!9))))
  (FPCHECK_FMUL_ACCURACY a!10 a!10))))))))

(check-sat)
(exit)
