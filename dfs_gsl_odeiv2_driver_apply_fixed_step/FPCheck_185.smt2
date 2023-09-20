(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!667 () (_ BitVec 64))
(declare-fun h_ack!668 () (_ BitVec 64))
(declare-fun y0_ack!666 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!667))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!666)
                                   ((_ to_fp 11 53) y0_ack!666))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!666)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!668))
                           ((_ to_fp 11 53) y1_ack!667)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) h_ack!668))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!666))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!666)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!668))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!667)
                                   a!2))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!667)
                                   a!2))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) h_ack!668))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!5))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!667)
                                   a!6))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!666)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!668)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!667)
                                   a!6)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) h_ack!668)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!7))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4024000000000000)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!667) a!8))
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!9 a!9)
            ((_ to_fp 11 53) #x3ff0000000000000))))))))))

(check-sat)
(exit)
