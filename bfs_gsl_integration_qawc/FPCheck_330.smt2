(declare-fun limit_ack!4161 () (_ BitVec 64))
(declare-fun a_ack!4162 () (_ BitVec 64))
(declare-fun b_ack!4158 () (_ BitVec 64))
(declare-fun epsabs_ack!4160 () (_ BitVec 64))
(declare-fun c_ack!4159 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4161)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4158) ((_ to_fp 11 53) a_ack!4162)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4160)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4159) ((_ to_fp 11 53) a_ack!4162))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4159) ((_ to_fp 11 53) b_ack!4158))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4159))
                   ((_ to_fp 11 53) a_ack!4162))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4158))
                 ((_ to_fp 11 53) b_ack!4158))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4159))
                   ((_ to_fp 11 53) a_ack!4162))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4158)))
         ((_ to_fp 11 53) b_ack!4158))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4159))
                           ((_ to_fp 11 53) a_ack!4162))
                   ((_ to_fp 11 53) b_ack!4158))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4162)
                                   ((_ to_fp 11 53) b_ack!4158))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4162)
                                   ((_ to_fp 11 53) b_ack!4158)))
                   ((_ to_fp 11 53) #x3fd9f95df119fd62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4158)
                                   ((_ to_fp 11 53) a_ack!4162)))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1ee8aa824e4911e1))))
  (FPCHECK_FDIV_OVERFLOW
    a!3
    (fp.sub roundNearestTiesToEven a!2 ((_ to_fp 11 53) c_ack!4159)))))))

(check-sat)
(exit)
