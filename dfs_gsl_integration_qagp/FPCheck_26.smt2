(declare-fun limit_ack!482 () (_ BitVec 64))
(declare-fun epsabs_ack!487 () (_ BitVec 64))
(declare-fun epsrel_ack!481 () (_ BitVec 64))
(declare-fun a_ack!488 () (_ BitVec 64))
(declare-fun x1_ack!483 () (_ BitVec 64))
(declare-fun x2_ack!484 () (_ BitVec 64))
(declare-fun x3_ack!485 () (_ BitVec 64))
(declare-fun b_ack!486 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!482)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!487) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!481)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!481)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!483) ((_ to_fp 11 53) a_ack!488))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!484) ((_ to_fp 11 53) x1_ack!483))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!485) ((_ to_fp 11 53) x2_ack!484))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!486) ((_ to_fp 11 53) x3_ack!485))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!488)
                                   ((_ to_fp 11 53) x1_ack!483))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!483)
                                   ((_ to_fp 11 53) a_ack!488)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!488)
                    ((_ to_fp 11 53) x1_ack!483)))
    a!1)))

(check-sat)
(exit)
