(declare-fun limit_ack!4081 () (_ BitVec 64))
(declare-fun a_ack!4082 () (_ BitVec 64))
(declare-fun b_ack!4078 () (_ BitVec 64))
(declare-fun epsabs_ack!4080 () (_ BitVec 64))
(declare-fun c_ack!4079 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!4081)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4078) ((_ to_fp 11 53) a_ack!4082)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4080)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4079) ((_ to_fp 11 53) a_ack!4082))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4079) ((_ to_fp 11 53) b_ack!4078))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4079))
                   ((_ to_fp 11 53) a_ack!4082))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4078))
                 ((_ to_fp 11 53) b_ack!4078))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4079))
                   ((_ to_fp 11 53) a_ack!4082))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4078)))
         ((_ to_fp 11 53) b_ack!4078))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4079))
                           ((_ to_fp 11 53) a_ack!4082))
                   ((_ to_fp 11 53) b_ack!4078))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4082)
                                   ((_ to_fp 11 53) b_ack!4078))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
