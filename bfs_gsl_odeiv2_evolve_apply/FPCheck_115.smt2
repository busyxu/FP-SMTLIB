(declare-fun t_ack!542 () (_ BitVec 64))
(declare-fun t1_ack!543 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!544 () (_ BitVec 64))
(declare-fun y1_ack!545 () (_ BitVec 64))
(declare-fun h_ack!546 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!543)
                    ((_ to_fp 11 53) t_ack!542))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!543)
                    ((_ to_fp 11 53) t_ack!542))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!543)
                     ((_ to_fp 11 53) t_ack!542))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!543)
                    ((_ to_fp 11 53) t_ack!542))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!545))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!544)
                                   ((_ to_fp 11 53) y0_ack!544))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!544)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!546))
                           ((_ to_fp 11 53) y1_ack!545)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!546))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!544))
                           a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!544))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!545))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!545)
                                   a!2))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!545)
                                   a!2))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!6 a!6)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!546)
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
                            ((_ to_fp 11 53) y0_ack!544)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!546)
                                    a!3))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!544)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!546)
                                    a!3)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!545)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!546)
                                   (fp.add roundNearestTiesToEven a!5 a!8))))))
  (FPCHECK_FSUB_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            a!9
            (fp.sub roundNearestTiesToEven
                    a!10
                    ((_ to_fp 11 53) #x3ff0000000000000))))))))))

(check-sat)
(exit)
