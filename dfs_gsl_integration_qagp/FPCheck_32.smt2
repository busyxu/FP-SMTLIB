(declare-fun limit_ack!618 () (_ BitVec 64))
(declare-fun epsabs_ack!623 () (_ BitVec 64))
(declare-fun epsrel_ack!617 () (_ BitVec 64))
(declare-fun a_ack!624 () (_ BitVec 64))
(declare-fun x1_ack!619 () (_ BitVec 64))
(declare-fun x2_ack!620 () (_ BitVec 64))
(declare-fun x3_ack!621 () (_ BitVec 64))
(declare-fun b_ack!622 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!618)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!623) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!617)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!617)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!619) ((_ to_fp 11 53) a_ack!624))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!620) ((_ to_fp 11 53) x1_ack!619))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!621) ((_ to_fp 11 53) x2_ack!620))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!622) ((_ to_fp 11 53) x3_ack!621))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!624)
                                   ((_ to_fp 11 53) x1_ack!619))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!619)
                                   ((_ to_fp 11 53) a_ack!624)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!624)
                                   ((_ to_fp 11 53) x1_ack!619)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
