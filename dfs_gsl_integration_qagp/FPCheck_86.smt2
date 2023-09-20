(declare-fun limit_ack!1530 () (_ BitVec 64))
(declare-fun epsabs_ack!1535 () (_ BitVec 64))
(declare-fun epsrel_ack!1529 () (_ BitVec 64))
(declare-fun a_ack!1536 () (_ BitVec 64))
(declare-fun x1_ack!1531 () (_ BitVec 64))
(declare-fun x2_ack!1532 () (_ BitVec 64))
(declare-fun x3_ack!1533 () (_ BitVec 64))
(declare-fun b_ack!1534 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1530)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1535) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1529)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1529)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1531) ((_ to_fp 11 53) a_ack!1536))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1532) ((_ to_fp 11 53) x1_ack!1531))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1533) ((_ to_fp 11 53) x2_ack!1532))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1534) ((_ to_fp 11 53) x3_ack!1533))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1536)
                                   ((_ to_fp 11 53) x1_ack!1531))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1531)
                                   ((_ to_fp 11 53) a_ack!1536)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1536)
                    ((_ to_fp 11 53) x1_ack!1531)))
    a!1)))

(check-sat)
(exit)
