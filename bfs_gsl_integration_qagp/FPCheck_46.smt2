(declare-fun limit_ack!790 () (_ BitVec 64))
(declare-fun epsabs_ack!795 () (_ BitVec 64))
(declare-fun a_ack!796 () (_ BitVec 64))
(declare-fun x1_ack!791 () (_ BitVec 64))
(declare-fun x2_ack!792 () (_ BitVec 64))
(declare-fun x3_ack!793 () (_ BitVec 64))
(declare-fun b_ack!794 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!790)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!795)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!791) ((_ to_fp 11 53) a_ack!796))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!792) ((_ to_fp 11 53) x1_ack!791))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!793) ((_ to_fp 11 53) x2_ack!792))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!794) ((_ to_fp 11 53) x3_ack!793))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!796)
                                   ((_ to_fp 11 53) x1_ack!791))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!791)
                                   ((_ to_fp 11 53) a_ack!796)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!796)
                                   ((_ to_fp 11 53) x1_ack!791)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
