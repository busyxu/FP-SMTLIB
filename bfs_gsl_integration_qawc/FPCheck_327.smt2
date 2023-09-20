(declare-fun limit_ack!4126 () (_ BitVec 64))
(declare-fun a_ack!4127 () (_ BitVec 64))
(declare-fun b_ack!4123 () (_ BitVec 64))
(declare-fun epsabs_ack!4125 () (_ BitVec 64))
(declare-fun c_ack!4124 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4126)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4123) ((_ to_fp 11 53) a_ack!4127)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4125)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4124) ((_ to_fp 11 53) a_ack!4127))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4124) ((_ to_fp 11 53) b_ack!4123))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4124))
                   ((_ to_fp 11 53) a_ack!4127))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4123))
                 ((_ to_fp 11 53) b_ack!4123))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4124))
                   ((_ to_fp 11 53) a_ack!4127))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4123)))
         ((_ to_fp 11 53) b_ack!4123))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4124))
                           ((_ to_fp 11 53) a_ack!4127))
                   ((_ to_fp 11 53) b_ack!4123))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4127)
                                   ((_ to_fp 11 53) b_ack!4123))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4127)
                                   ((_ to_fp 11 53) b_ack!4123)))
                   ((_ to_fp 11 53) #x3fd9f95df119fd62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4123)
                                   ((_ to_fp 11 53) a_ack!4127)))
                   a!1)))
  (FPCHECK_FSUB_OVERFLOW a!2 c_ack!4124))))

(check-sat)
(exit)
