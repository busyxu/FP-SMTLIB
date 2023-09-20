(declare-fun limit_ack!3321 () (_ BitVec 64))
(declare-fun a_ack!3322 () (_ BitVec 64))
(declare-fun b_ack!3318 () (_ BitVec 64))
(declare-fun epsabs_ack!3320 () (_ BitVec 64))
(declare-fun c_ack!3319 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3321)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3318) ((_ to_fp 11 53) a_ack!3322)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3320)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3319) ((_ to_fp 11 53) a_ack!3322))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3319) ((_ to_fp 11 53) b_ack!3318))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3319))
                   ((_ to_fp 11 53) a_ack!3322))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3318))
                 ((_ to_fp 11 53) b_ack!3318))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3319))
                   ((_ to_fp 11 53) a_ack!3322))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3318)))
         ((_ to_fp 11 53) b_ack!3318))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3319))
                           ((_ to_fp 11 53) a_ack!3322))
                   ((_ to_fp 11 53) b_ack!3318))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3322)
                                   ((_ to_fp 11 53) b_ack!3318))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3322)
                                   ((_ to_fp 11 53) b_ack!3318)))
                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3318)
                                   ((_ to_fp 11 53) a_ack!3322)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x1ee044cc17865903))))

(check-sat)
(exit)
