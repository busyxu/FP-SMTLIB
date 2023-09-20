(declare-fun b_ack!327 () (_ BitVec 64))
(declare-fun a_ack!328 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!328) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!328)
                       ((_ to_fp 11 53) b_ack!327)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!327) ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!327))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.abs ((_ to_fp 11 53) b_ack!327)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!327))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!327)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!328))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!327)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!328)
                           ((_ to_fp 11 53) b_ack!327))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!328)
                           ((_ to_fp 11 53) b_ack!327))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!328)
                                   ((_ to_fp 11 53) b_ack!327))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!328)
                           ((_ to_fp 11 53) b_ack!327))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4018000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!328)
                                   ((_ to_fp 11 53) b_ack!327))
                           a!2)
                   a!2))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!328)
                                   ((_ to_fp 11 53) b_ack!327)))
                   a!6)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven a!1 a!3))
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!327))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4059000000000000)))
                   (fp.abs a!7))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs a!1)
                   (fp.add roundNearestTiesToEven
                           a!8
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   (fp.abs a!3))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!4 ((_ to_fp 11 53) #x3cb0000000000000))
    a!9))))))

(check-sat)
(exit)
