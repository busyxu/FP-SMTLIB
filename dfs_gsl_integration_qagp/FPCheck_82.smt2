(declare-fun limit_ack!1474 () (_ BitVec 64))
(declare-fun epsabs_ack!1479 () (_ BitVec 64))
(declare-fun epsrel_ack!1473 () (_ BitVec 64))
(declare-fun a_ack!1480 () (_ BitVec 64))
(declare-fun x1_ack!1475 () (_ BitVec 64))
(declare-fun x2_ack!1476 () (_ BitVec 64))
(declare-fun x3_ack!1477 () (_ BitVec 64))
(declare-fun b_ack!1478 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1474)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1479) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1473)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1473)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1475) ((_ to_fp 11 53) a_ack!1480))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1476) ((_ to_fp 11 53) x1_ack!1475))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1477) ((_ to_fp 11 53) x2_ack!1476))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1478) ((_ to_fp 11 53) x3_ack!1477))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1480)
                                   ((_ to_fp 11 53) x1_ack!1475))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1475)
                                   ((_ to_fp 11 53) a_ack!1480)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1480)
                                   ((_ to_fp 11 53) x1_ack!1475)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
