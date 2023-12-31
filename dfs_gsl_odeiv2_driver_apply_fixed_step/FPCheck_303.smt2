(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!1089 () (_ BitVec 64))
(declare-fun h_ack!1090 () (_ BitVec 64))
(declare-fun y0_ack!1088 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!1090)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!1089))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!1088)
                                   ((_ to_fp 11 53) y0_ack!1088))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1088)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1089)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1088))
                           a!3)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1088)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1089)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1088)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1089))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1089)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_OVERFLOW
    y1_ack!1089
    (fp.mul roundNearestTiesToEven a!1 (fp.sub roundNearestTiesToEven a!2 a!6)))))))

(check-sat)
(exit)
