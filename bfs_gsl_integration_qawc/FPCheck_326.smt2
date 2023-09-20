(declare-fun limit_ack!4106 () (_ BitVec 64))
(declare-fun a_ack!4107 () (_ BitVec 64))
(declare-fun b_ack!4103 () (_ BitVec 64))
(declare-fun epsabs_ack!4105 () (_ BitVec 64))
(declare-fun c_ack!4104 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4106)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4103) ((_ to_fp 11 53) a_ack!4107)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4105)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4104) ((_ to_fp 11 53) a_ack!4107))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4104) ((_ to_fp 11 53) b_ack!4103))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4104))
                   ((_ to_fp 11 53) a_ack!4107))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4103))
                 ((_ to_fp 11 53) b_ack!4103))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4104))
                   ((_ to_fp 11 53) a_ack!4107))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4103)))
         ((_ to_fp 11 53) b_ack!4103))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4104))
                           ((_ to_fp 11 53) a_ack!4107))
                   ((_ to_fp 11 53) b_ack!4103))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4107)
                                   ((_ to_fp 11 53) b_ack!4103))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4107)
                                   ((_ to_fp 11 53) b_ack!4103)))
                   ((_ to_fp 11 53) #x3fd9f95df119fd62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4103)
                                   ((_ to_fp 11 53) a_ack!4107)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x1ee8aa824e4911e1))))

(check-sat)
(exit)
