(declare-fun limit_ack!4091 () (_ BitVec 64))
(declare-fun a_ack!4092 () (_ BitVec 64))
(declare-fun b_ack!4088 () (_ BitVec 64))
(declare-fun epsabs_ack!4090 () (_ BitVec 64))
(declare-fun c_ack!4089 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4091)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4088) ((_ to_fp 11 53) a_ack!4092)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4090)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4089) ((_ to_fp 11 53) a_ack!4092))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4089) ((_ to_fp 11 53) b_ack!4088))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4089))
                   ((_ to_fp 11 53) a_ack!4092))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4088))
                 ((_ to_fp 11 53) b_ack!4088))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4089))
                   ((_ to_fp 11 53) a_ack!4092))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4088)))
         ((_ to_fp 11 53) b_ack!4088))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4089))
                           ((_ to_fp 11 53) a_ack!4092))
                   ((_ to_fp 11 53) b_ack!4088))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4092)
                                   ((_ to_fp 11 53) b_ack!4088))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4092)
                                   ((_ to_fp 11 53) b_ack!4088)))
                   ((_ to_fp 11 53) #x3fd9f95df119fd62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4088)
                                   ((_ to_fp 11 53) a_ack!4092)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x1ee8aa824e4911e1))))

(check-sat)
(exit)
