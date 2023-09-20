(declare-fun limit_ack!8084 () (_ BitVec 64))
(declare-fun a_ack!8085 () (_ BitVec 64))
(declare-fun b_ack!8080 () (_ BitVec 64))
(declare-fun epsabs_ack!8082 () (_ BitVec 64))
(declare-fun epsrel_ack!8083 () (_ BitVec 64))
(declare-fun c_ack!8081 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!8084)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!8080) ((_ to_fp 11 53) a_ack!8085)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!8082) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!8083)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!8083)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8081) ((_ to_fp 11 53) a_ack!8085))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8081) ((_ to_fp 11 53) b_ack!8080))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!8081))
                   ((_ to_fp 11 53) a_ack!8085))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!8080))
                 ((_ to_fp 11 53) b_ack!8080))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!8081))
                   ((_ to_fp 11 53) a_ack!8085))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!8080)))
         ((_ to_fp 11 53) b_ack!8080))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!8081))
                           ((_ to_fp 11 53) a_ack!8085))
                   ((_ to_fp 11 53) b_ack!8080))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!8085)
                                   ((_ to_fp 11 53) b_ack!8080))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
