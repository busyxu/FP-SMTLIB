(declare-fun limit_ack!4514 () (_ BitVec 64))
(declare-fun epsabs_ack!4519 () (_ BitVec 64))
(declare-fun a_ack!4520 () (_ BitVec 64))
(declare-fun x1_ack!4515 () (_ BitVec 64))
(declare-fun x2_ack!4516 () (_ BitVec 64))
(declare-fun x3_ack!4517 () (_ BitVec 64))
(declare-fun b_ack!4518 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4514)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4519)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4515) ((_ to_fp 11 53) a_ack!4520))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4516) ((_ to_fp 11 53) x1_ack!4515))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4517) ((_ to_fp 11 53) x2_ack!4516))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4518) ((_ to_fp 11 53) x3_ack!4517))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4520)
                                   ((_ to_fp 11 53) x1_ack!4515))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4515)
                                   ((_ to_fp 11 53) a_ack!4520)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4520)
                    ((_ to_fp 11 53) x1_ack!4515)))
    a!1)))

(check-sat)
(exit)
