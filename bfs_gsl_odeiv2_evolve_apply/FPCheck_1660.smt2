(declare-fun t_ack!8793 () (_ BitVec 64))
(declare-fun t1_ack!8794 () (_ BitVec 64))
(declare-fun h_ack!8797 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!8796 () (_ BitVec 64))
(declare-fun y0_ack!8795 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8794)
                    ((_ to_fp 11 53) t_ack!8793))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8794)
                    ((_ to_fp 11 53) t_ack!8793))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8794)
                ((_ to_fp 11 53) t_ack!8793))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8797)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8794)
                    ((_ to_fp 11 53) t_ack!8793)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8794)
                    ((_ to_fp 11 53) t_ack!8793))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!8796))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!8795)
                                   ((_ to_fp 11 53) y0_ack!8795))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!8795)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!8797))
                           ((_ to_fp 11 53) y1_ack!8796)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!8795))
                           a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!8797))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!8795))
                           a!1))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!8796)
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
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb8000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!8796)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!8797)
                                   (fp.add roundNearestTiesToEven a!2 a!6))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) h_ack!8797)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fa0000000000000)
                                   ((_ to_fp 11 53) y1_ack!8796))
                           a!7))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!8795) a!8)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!8795) a!8)))))))))

(check-sat)
(exit)
