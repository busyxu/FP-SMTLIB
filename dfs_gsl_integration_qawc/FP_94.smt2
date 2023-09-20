(declare-fun limit_ack!4808 () (_ BitVec 64))
(declare-fun a_ack!4809 () (_ BitVec 64))
(declare-fun b_ack!4804 () (_ BitVec 64))
(declare-fun epsabs_ack!4806 () (_ BitVec 64))
(declare-fun epsrel_ack!4807 () (_ BitVec 64))
(declare-fun c_ack!4805 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!4808)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4804) ((_ to_fp 11 53) a_ack!4809))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4806) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4807)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4807)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4805) ((_ to_fp 11 53) a_ack!4809))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4805) ((_ to_fp 11 53) b_ack!4804))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4805))
                   ((_ to_fp 11 53) b_ack!4804))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4809))
                 ((_ to_fp 11 53) a_ack!4809))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4805))
                   ((_ to_fp 11 53) b_ack!4804))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4809)))
         ((_ to_fp 11 53) a_ack!4809))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4805))
                           ((_ to_fp 11 53) b_ack!4804))
                   ((_ to_fp 11 53) a_ack!4809))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!4804)
                               ((_ to_fp 11 53) a_ack!4809))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4805))
                           ((_ to_fp 11 53) b_ack!4804))
                   ((_ to_fp 11 53) a_ack!4809))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4804)
                                   ((_ to_fp 11 53) a_ack!4809))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
