(declare-fun limit_ack!4591 () (_ BitVec 64))
(declare-fun epsabs_ack!4596 () (_ BitVec 64))
(declare-fun a_ack!4597 () (_ BitVec 64))
(declare-fun x1_ack!4592 () (_ BitVec 64))
(declare-fun x2_ack!4593 () (_ BitVec 64))
(declare-fun x3_ack!4594 () (_ BitVec 64))
(declare-fun b_ack!4595 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4591)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4596)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4592) ((_ to_fp 11 53) a_ack!4597))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4593) ((_ to_fp 11 53) x1_ack!4592))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4594) ((_ to_fp 11 53) x2_ack!4593))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4595) ((_ to_fp 11 53) x3_ack!4594))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4597)
                                   ((_ to_fp 11 53) x1_ack!4592))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4592)
                                   ((_ to_fp 11 53) a_ack!4597)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4597)
                                   ((_ to_fp 11 53) x1_ack!4592)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
