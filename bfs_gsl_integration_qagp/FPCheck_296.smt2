(declare-fun limit_ack!4486 () (_ BitVec 64))
(declare-fun epsabs_ack!4491 () (_ BitVec 64))
(declare-fun a_ack!4492 () (_ BitVec 64))
(declare-fun x1_ack!4487 () (_ BitVec 64))
(declare-fun x2_ack!4488 () (_ BitVec 64))
(declare-fun x3_ack!4489 () (_ BitVec 64))
(declare-fun b_ack!4490 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4486)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4491)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4487) ((_ to_fp 11 53) a_ack!4492))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4488) ((_ to_fp 11 53) x1_ack!4487))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4489) ((_ to_fp 11 53) x2_ack!4488))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4490) ((_ to_fp 11 53) x3_ack!4489))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4492)
                                   ((_ to_fp 11 53) x1_ack!4487))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4487)
                                   ((_ to_fp 11 53) a_ack!4492)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4492)
                    ((_ to_fp 11 53) x1_ack!4487)))
    a!1)))

(check-sat)
(exit)
