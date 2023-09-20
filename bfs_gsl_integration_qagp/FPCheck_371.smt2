(declare-fun limit_ack!5578 () (_ BitVec 64))
(declare-fun epsabs_ack!5583 () (_ BitVec 64))
(declare-fun a_ack!5584 () (_ BitVec 64))
(declare-fun x1_ack!5579 () (_ BitVec 64))
(declare-fun x2_ack!5580 () (_ BitVec 64))
(declare-fun x3_ack!5581 () (_ BitVec 64))
(declare-fun b_ack!5582 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5578)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5583)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5579) ((_ to_fp 11 53) a_ack!5584))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5580) ((_ to_fp 11 53) x1_ack!5579))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5581) ((_ to_fp 11 53) x2_ack!5580))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5582) ((_ to_fp 11 53) x3_ack!5581))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5584)
                                   ((_ to_fp 11 53) x1_ack!5579))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5579)
                                   ((_ to_fp 11 53) a_ack!5584)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5584)
                    ((_ to_fp 11 53) x1_ack!5579)))
    a!1)))

(check-sat)
(exit)
