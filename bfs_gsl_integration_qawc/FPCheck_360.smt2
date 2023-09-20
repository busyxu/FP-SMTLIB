(declare-fun limit_ack!4604 () (_ BitVec 64))
(declare-fun a_ack!4605 () (_ BitVec 64))
(declare-fun b_ack!4600 () (_ BitVec 64))
(declare-fun epsabs_ack!4602 () (_ BitVec 64))
(declare-fun epsrel_ack!4603 () (_ BitVec 64))
(declare-fun c_ack!4601 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4604)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4600) ((_ to_fp 11 53) a_ack!4605)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4602) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4603)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4603)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4601) ((_ to_fp 11 53) a_ack!4605))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4601) ((_ to_fp 11 53) b_ack!4600))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4601))
                   ((_ to_fp 11 53) a_ack!4605))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4600))
                 ((_ to_fp 11 53) b_ack!4600))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4601))
                   ((_ to_fp 11 53) a_ack!4605))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4600)))
         ((_ to_fp 11 53) b_ack!4600))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4601))
                           ((_ to_fp 11 53) a_ack!4605))
                   ((_ to_fp 11 53) b_ack!4600))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4605)
                                   ((_ to_fp 11 53) b_ack!4600))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4600)
                                   ((_ to_fp 11 53) a_ack!4605))))))
  (FPCHECK_FDIV_UNDERFLOW (CF_log a!1) #x1f96a09e663b59f1)))

(check-sat)
(exit)
