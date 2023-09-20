(declare-fun limit_ack!2056 () (_ BitVec 64))
(declare-fun a_ack!2057 () (_ BitVec 64))
(declare-fun b_ack!2053 () (_ BitVec 64))
(declare-fun epsabs_ack!2055 () (_ BitVec 64))
(declare-fun c_ack!2054 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!2056)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2053) ((_ to_fp 11 53) a_ack!2057)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2055)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2054) ((_ to_fp 11 53) a_ack!2057))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2054) ((_ to_fp 11 53) b_ack!2053))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2054))
                   ((_ to_fp 11 53) a_ack!2057))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2053))
                 ((_ to_fp 11 53) b_ack!2053))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2054))
                   ((_ to_fp 11 53) a_ack!2057))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2053)))
         ((_ to_fp 11 53) b_ack!2053))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2054))
                           ((_ to_fp 11 53) a_ack!2057))
                   ((_ to_fp 11 53) b_ack!2053))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2057)
                                   ((_ to_fp 11 53) b_ack!2053))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
