(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!468 () (_ BitVec 64))
(declare-fun y1_ack!469 () (_ BitVec 64))
(declare-fun h_ack!470 () (_ BitVec 64))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!468)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!470))
                           ((_ to_fp 11 53) y1_ack!469))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!469))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!468)
                                   ((_ to_fp 11 53) y0_ack!468))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) h_ack!470))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!468))
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!469)
                                   a!3))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!468)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!470))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!469)
                                   a!3)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) h_ack!470))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1)
                           a!4))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4024000000000000)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!469) a!5))
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!6 a!6)
            ((_ to_fp 11 53) #x3ff0000000000000))))))))

(check-sat)
(exit)
