(declare-fun limit_ack!871 () (_ BitVec 64))
(declare-fun epsabs_ack!870 () (_ BitVec 64))
(declare-fun b_ack!869 () (_ BitVec 64))
(declare-fun a_ack!872 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!871)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!870)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!872)
                                   ((_ to_fp 11 53) b_ack!869))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!872)
                           ((_ to_fp 11 53) b_ack!869))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!869)
                           ((_ to_fp 11 53) a_ack!872)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb1115f8b62dc1f)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!3)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!4)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc32138c878efe5)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!6)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!7)
                                   ((_ to_fp 11 53) #x7ff8000000000001))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!5)
    a!8)))))

(check-sat)
(exit)
