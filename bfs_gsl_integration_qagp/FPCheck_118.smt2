(declare-fun limit_ack!1861 () (_ BitVec 64))
(declare-fun epsabs_ack!1866 () (_ BitVec 64))
(declare-fun a_ack!1867 () (_ BitVec 64))
(declare-fun x1_ack!1862 () (_ BitVec 64))
(declare-fun x2_ack!1863 () (_ BitVec 64))
(declare-fun x3_ack!1864 () (_ BitVec 64))
(declare-fun b_ack!1865 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1861)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1866)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1862) ((_ to_fp 11 53) a_ack!1867))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1863) ((_ to_fp 11 53) x1_ack!1862))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1864) ((_ to_fp 11 53) x2_ack!1863))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1865) ((_ to_fp 11 53) x3_ack!1864))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1867)
                                   ((_ to_fp 11 53) x1_ack!1862))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1867)
                           ((_ to_fp 11 53) x1_ack!1862))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1862)
                           ((_ to_fp 11 53) a_ack!1867)))))
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
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!5)
    a!8)))))

(check-sat)
(exit)
