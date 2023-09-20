(declare-fun limit_ack!5683 () (_ BitVec 64))
(declare-fun epsabs_ack!5688 () (_ BitVec 64))
(declare-fun a_ack!5689 () (_ BitVec 64))
(declare-fun x1_ack!5684 () (_ BitVec 64))
(declare-fun x2_ack!5685 () (_ BitVec 64))
(declare-fun x3_ack!5686 () (_ BitVec 64))
(declare-fun b_ack!5687 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5683)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5688)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5684) ((_ to_fp 11 53) a_ack!5689))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5685) ((_ to_fp 11 53) x1_ack!5684))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5686) ((_ to_fp 11 53) x2_ack!5685))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5687) ((_ to_fp 11 53) x3_ack!5686))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5689)
                                   ((_ to_fp 11 53) x1_ack!5684))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5684)
                                   ((_ to_fp 11 53) a_ack!5689)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5689)
                                   ((_ to_fp 11 53) x1_ack!5684)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
