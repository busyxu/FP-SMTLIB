(declare-fun limit_ack!1406 () (_ BitVec 64))
(declare-fun epsabs_ack!1411 () (_ BitVec 64))
(declare-fun a_ack!1412 () (_ BitVec 64))
(declare-fun x1_ack!1407 () (_ BitVec 64))
(declare-fun x2_ack!1408 () (_ BitVec 64))
(declare-fun x3_ack!1409 () (_ BitVec 64))
(declare-fun b_ack!1410 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1406)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1411)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1407) ((_ to_fp 11 53) a_ack!1412))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1408) ((_ to_fp 11 53) x1_ack!1407))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1409) ((_ to_fp 11 53) x2_ack!1408))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1410) ((_ to_fp 11 53) x3_ack!1409))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1412)
                                   ((_ to_fp 11 53) x1_ack!1407))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1407)
                                   ((_ to_fp 11 53) a_ack!1412)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1412)
                    ((_ to_fp 11 53) x1_ack!1407)))
    a!1)))

(check-sat)
(exit)
