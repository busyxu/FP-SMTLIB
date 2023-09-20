(declare-fun limit_ack!529 () (_ BitVec 64))
(declare-fun epsabs_ack!527 () (_ BitVec 64))
(declare-fun epsrel_ack!528 () (_ BitVec 64))
(declare-fun b_ack!530 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!529)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!527) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!528)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!528)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!530)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!530)
                                   ((_ to_fp 11 53) #x3f9abcb2bd7da4dd))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x7ff8000000000001))
    #x3fef2f8bc73e3114)))

(check-sat)
(exit)
