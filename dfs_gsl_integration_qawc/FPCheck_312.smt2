(declare-fun limit_ack!4832 () (_ BitVec 64))
(declare-fun a_ack!4833 () (_ BitVec 64))
(declare-fun b_ack!4828 () (_ BitVec 64))
(declare-fun epsabs_ack!4830 () (_ BitVec 64))
(declare-fun epsrel_ack!4831 () (_ BitVec 64))
(declare-fun c_ack!4829 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4832)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4828) ((_ to_fp 11 53) a_ack!4833))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4830) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4831)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4831)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4829) ((_ to_fp 11 53) a_ack!4833))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4829) ((_ to_fp 11 53) b_ack!4828))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4829))
                   ((_ to_fp 11 53) b_ack!4828))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4833))
                 ((_ to_fp 11 53) a_ack!4833))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4829))
                   ((_ to_fp 11 53) b_ack!4828))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4833)))
         ((_ to_fp 11 53) a_ack!4833))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4829))
                           ((_ to_fp 11 53) b_ack!4828))
                   ((_ to_fp 11 53) a_ack!4833))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!4828)
                               ((_ to_fp 11 53) a_ack!4833))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4829))
                           ((_ to_fp 11 53) b_ack!4828))
                   ((_ to_fp 11 53) a_ack!4833))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4828)
                                   ((_ to_fp 11 53) a_ack!4833))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4833)
                           ((_ to_fp 11 53) b_ack!4828)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1f86a09e667f3bcd))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            a!2
            (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!4829)))
    #x3fdabfd7e03c2fa6))))

(check-sat)
(exit)
