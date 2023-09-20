(declare-fun key_ack!489 () (_ BitVec 32))
(declare-fun limit_ack!488 () (_ BitVec 64))
(declare-fun epsabs_ack!487 () (_ BitVec 64))
(declare-fun b_ack!486 () (_ BitVec 64))
(declare-fun a_ack!490 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt key_ack!489 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!488)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!487)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!490)
                                   ((_ to_fp 11 53) b_ack!486))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!490)
                                   ((_ to_fp 11 53) b_ack!486))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (CF_log a!1)
            ((_ to_fp 11 53) #x1fd0000000000000))
    #x3fdabfd7e03c2fa6)))

(check-sat)
(exit)
