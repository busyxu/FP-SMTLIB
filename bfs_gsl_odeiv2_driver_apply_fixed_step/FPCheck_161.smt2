(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!565 () (_ BitVec 64))
(declare-fun y1_ack!566 () (_ BitVec 64))
(declare-fun h_ack!567 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!566))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!565)
                                   ((_ to_fp 11 53) y0_ack!565))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!565)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!567))
                           ((_ to_fp 11 53) y1_ack!566)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!567)
                           ((_ to_fp 11 53) #x4018000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!565))
                           a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) h_ack!567))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!565))
                           a!1))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!566)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!565)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!567))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!566)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!567)
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!5)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) h_ack!567))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!5))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!566)
                                   a!8))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!7)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!567)
                            ((_ to_fp 11 53) #x4008000000000000))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            a!9))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!566) a!2)
            a!6)
    a!10))))))))

(check-sat)
(exit)
