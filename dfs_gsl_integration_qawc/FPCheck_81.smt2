(declare-fun limit_ack!1292 () (_ BitVec 64))
(declare-fun a_ack!1293 () (_ BitVec 64))
(declare-fun b_ack!1288 () (_ BitVec 64))
(declare-fun epsabs_ack!1290 () (_ BitVec 64))
(declare-fun epsrel_ack!1291 () (_ BitVec 64))
(declare-fun c_ack!1289 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1292)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1288) ((_ to_fp 11 53) a_ack!1293))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1290) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1291)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1291)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1289) ((_ to_fp 11 53) a_ack!1293))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1289) ((_ to_fp 11 53) b_ack!1288))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1289))
                   ((_ to_fp 11 53) b_ack!1288))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1293))
                 ((_ to_fp 11 53) a_ack!1293))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1289))
                   ((_ to_fp 11 53) b_ack!1288))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1293)))
         ((_ to_fp 11 53) a_ack!1293))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1289))
                           ((_ to_fp 11 53) b_ack!1288))
                   ((_ to_fp 11 53) a_ack!1293))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!1288)
                               ((_ to_fp 11 53) a_ack!1293))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1289))
                           ((_ to_fp 11 53) b_ack!1288))
                   ((_ to_fp 11 53) a_ack!1293))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1288)
                                   ((_ to_fp 11 53) a_ack!1293))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!1293))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1288)
                                   ((_ to_fp 11 53) a_ack!1293)))
                   ((_ to_fp 11 53) #x3fefb9ea92ec689b))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1288)
                                   ((_ to_fp 11 53) a_ack!1293)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
