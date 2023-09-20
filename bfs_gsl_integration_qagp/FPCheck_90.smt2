(declare-fun limit_ack!1420 () (_ BitVec 64))
(declare-fun epsabs_ack!1425 () (_ BitVec 64))
(declare-fun a_ack!1426 () (_ BitVec 64))
(declare-fun x1_ack!1421 () (_ BitVec 64))
(declare-fun x2_ack!1422 () (_ BitVec 64))
(declare-fun x3_ack!1423 () (_ BitVec 64))
(declare-fun b_ack!1424 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1420)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1425)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1421) ((_ to_fp 11 53) a_ack!1426))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1422) ((_ to_fp 11 53) x1_ack!1421))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1423) ((_ to_fp 11 53) x2_ack!1422))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1424) ((_ to_fp 11 53) x3_ack!1423))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1426)
                                   ((_ to_fp 11 53) x1_ack!1421))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1421)
                                   ((_ to_fp 11 53) a_ack!1426)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1426)
                    ((_ to_fp 11 53) x1_ack!1421)))
    a!1)))

(check-sat)
(exit)
