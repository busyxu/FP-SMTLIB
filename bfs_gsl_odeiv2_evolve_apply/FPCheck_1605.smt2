(declare-fun t_ack!8257 () (_ BitVec 64))
(declare-fun t1_ack!8258 () (_ BitVec 64))
(declare-fun h_ack!8261 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!8260 () (_ BitVec 64))
(declare-fun y0_ack!8259 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8258)
                    ((_ to_fp 11 53) t_ack!8257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8258)
                    ((_ to_fp 11 53) t_ack!8257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8258)
                ((_ to_fp 11 53) t_ack!8257))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8261)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8258)
                    ((_ to_fp 11 53) t_ack!8257)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8258)
                    ((_ to_fp 11 53) t_ack!8257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!8260))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!8259)
                                   ((_ to_fp 11 53) y0_ack!8259))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!8259)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!8261))
                           ((_ to_fp 11 53) y1_ack!8260)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!8259))
                           a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!8261))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!8259))
                           a!1))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!8260)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!5))))
  (FPCHECK_FMUL_ACCURACY
    #x4024000000000000
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) y1_ack!8260)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!8261)
                    (fp.add roundNearestTiesToEven a!2 a!6)))))))))

(check-sat)
(exit)
