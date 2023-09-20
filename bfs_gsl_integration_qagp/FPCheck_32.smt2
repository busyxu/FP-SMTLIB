(declare-fun limit_ack!559 () (_ BitVec 64))
(declare-fun epsabs_ack!564 () (_ BitVec 64))
(declare-fun a_ack!565 () (_ BitVec 64))
(declare-fun x1_ack!560 () (_ BitVec 64))
(declare-fun x2_ack!561 () (_ BitVec 64))
(declare-fun x3_ack!562 () (_ BitVec 64))
(declare-fun b_ack!563 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!559)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!564)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!560) ((_ to_fp 11 53) a_ack!565))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!561) ((_ to_fp 11 53) x1_ack!560))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!562) ((_ to_fp 11 53) x2_ack!561))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!563) ((_ to_fp 11 53) x3_ack!562))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!565)
                                   ((_ to_fp 11 53) x1_ack!560))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!565)
                                   ((_ to_fp 11 53) x1_ack!560))))))
  (FPCHECK_FDIV_UNDERFLOW (CF_log a!1) #x7ff8000000000001)))

(check-sat)
(exit)
