(declare-fun b_ack!341 () (_ BitVec 64))
(declare-fun a_ack!342 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!342) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!342)
                       ((_ to_fp 11 53) b_ack!341)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!341) ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!341))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.abs ((_ to_fp 11 53) b_ack!341)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!341))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!341)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!342))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!341)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!342)
                                   ((_ to_fp 11 53) b_ack!341))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!342)
                                   ((_ to_fp 11 53) b_ack!341)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!342)
                                   ((_ to_fp 11 53) b_ack!341))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
  (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 (fp.abs a!3)))))

(check-sat)
(exit)
