(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1383 () (_ BitVec 64))
(declare-fun h_ack!1384 () (_ BitVec 64))
(declare-fun y0_ack!1382 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!1384)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!1383))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!1382)
                                   ((_ to_fp 11 53) y0_ack!1382))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1382)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1383)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1382))
                           a!3)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1382)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1383)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1382)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1383))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1383)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!1382)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1383)
                                   a!4)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!1383)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven a!2 a!6)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!1382)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1384)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!7)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!7)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!9)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!1383)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1384)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!8)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    a!11)
            (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!8 a!8)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))))))))

(check-sat)
(exit)
