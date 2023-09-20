(declare-fun limit_ack!1408 () (_ BitVec 64))
(declare-fun a_ack!1409 () (_ BitVec 64))
(declare-fun b_ack!1405 () (_ BitVec 64))
(declare-fun epsabs_ack!1407 () (_ BitVec 64))
(declare-fun c_ack!1406 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1408)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1405) ((_ to_fp 11 53) a_ack!1409))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1407)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1406) ((_ to_fp 11 53) a_ack!1409))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1406) ((_ to_fp 11 53) b_ack!1405))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1405)
                       ((_ to_fp 11 53) a_ack!1409))
               ((_ to_fp 11 53) a_ack!1409))
       ((_ to_fp 11 53) b_ack!1405)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1405)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1405)
                       ((_ to_fp 11 53) a_ack!1409)))
       ((_ to_fp 11 53) a_ack!1409)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1406))
                           ((_ to_fp 11 53) b_ack!1405))
                   ((_ to_fp 11 53) a_ack!1409))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1405)
                                   ((_ to_fp 11 53) a_ack!1409))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1405)
                                   ((_ to_fp 11 53) a_ack!1409))))))
  (FPCHECK_FDIV_OVERFLOW (CF_log a!1) #x1ecdcca0d0cbf408)))

(check-sat)
(exit)
