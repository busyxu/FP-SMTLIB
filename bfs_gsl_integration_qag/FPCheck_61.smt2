(declare-fun key_ack!664 () (_ BitVec 32))
(declare-fun limit_ack!663 () (_ BitVec 64))
(declare-fun epsabs_ack!662 () (_ BitVec 64))
(declare-fun b_ack!661 () (_ BitVec 64))
(declare-fun a_ack!665 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt key_ack!664 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!663)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!662)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!665)
                                   ((_ to_fp 11 53) b_ack!661))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!661)
                                   ((_ to_fp 11 53) a_ack!665)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!665)
                    ((_ to_fp 11 53) b_ack!661)))
    a!1)))

(check-sat)
(exit)
