(declare-fun limit_ack!4106 () (_ BitVec 64))
(declare-fun epsabs_ack!4111 () (_ BitVec 64))
(declare-fun epsrel_ack!4105 () (_ BitVec 64))
(declare-fun a_ack!4112 () (_ BitVec 64))
(declare-fun x1_ack!4107 () (_ BitVec 64))
(declare-fun x2_ack!4108 () (_ BitVec 64))
(declare-fun x3_ack!4109 () (_ BitVec 64))
(declare-fun b_ack!4110 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4106)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4111) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4105)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4105)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4107) ((_ to_fp 11 53) a_ack!4112))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4108) ((_ to_fp 11 53) x1_ack!4107))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4109) ((_ to_fp 11 53) x2_ack!4108))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4110) ((_ to_fp 11 53) x3_ack!4109))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4112)
                                   ((_ to_fp 11 53) x1_ack!4107))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4107)
                                   ((_ to_fp 11 53) a_ack!4112)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4112)
                                   ((_ to_fp 11 53) x1_ack!4107)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
