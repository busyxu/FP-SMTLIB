(declare-fun key_ack!409 () (_ BitVec 32))
(declare-fun limit_ack!408 () (_ BitVec 64))
(declare-fun epsabs_ack!407 () (_ BitVec 64))
(declare-fun b_ack!406 () (_ BitVec 64))
(declare-fun a_ack!410 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt key_ack!409 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!408)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!407)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!410)
                                   ((_ to_fp 11 53) b_ack!406))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!410)
                           ((_ to_fp 11 53) b_ack!406)))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
