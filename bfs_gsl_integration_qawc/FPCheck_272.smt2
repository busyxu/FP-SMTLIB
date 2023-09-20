(declare-fun limit_ack!3466 () (_ BitVec 64))
(declare-fun a_ack!3467 () (_ BitVec 64))
(declare-fun b_ack!3463 () (_ BitVec 64))
(declare-fun epsabs_ack!3465 () (_ BitVec 64))
(declare-fun c_ack!3464 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3466)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3463) ((_ to_fp 11 53) a_ack!3467)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3465)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3464) ((_ to_fp 11 53) a_ack!3467))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3464) ((_ to_fp 11 53) b_ack!3463))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3464))
                   ((_ to_fp 11 53) a_ack!3467))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3463))
                 ((_ to_fp 11 53) b_ack!3463))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3464))
                   ((_ to_fp 11 53) a_ack!3467))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3463)))
         ((_ to_fp 11 53) b_ack!3463))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3464))
                           ((_ to_fp 11 53) a_ack!3467))
                   ((_ to_fp 11 53) b_ack!3463))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3467)
                                   ((_ to_fp 11 53) b_ack!3463))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3467)
                                   ((_ to_fp 11 53) b_ack!3463)))
                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3463)
                    ((_ to_fp 11 53) a_ack!3467)))
    a!1)))

(check-sat)
(exit)
