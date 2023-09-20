(declare-fun limit_ack!1434 () (_ BitVec 64))
(declare-fun epsabs_ack!1439 () (_ BitVec 64))
(declare-fun a_ack!1440 () (_ BitVec 64))
(declare-fun x1_ack!1435 () (_ BitVec 64))
(declare-fun x2_ack!1436 () (_ BitVec 64))
(declare-fun x3_ack!1437 () (_ BitVec 64))
(declare-fun b_ack!1438 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1434)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1439)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1435) ((_ to_fp 11 53) a_ack!1440))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1436) ((_ to_fp 11 53) x1_ack!1435))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1437) ((_ to_fp 11 53) x2_ack!1436))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1438) ((_ to_fp 11 53) x3_ack!1437))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1440)
                                   ((_ to_fp 11 53) x1_ack!1435))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1435)
                                   ((_ to_fp 11 53) a_ack!1440)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1440)
                    ((_ to_fp 11 53) x1_ack!1435)))
    a!1)))

(check-sat)
(exit)
