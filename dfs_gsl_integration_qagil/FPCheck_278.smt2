(declare-fun limit_ack!1807 () (_ BitVec 64))
(declare-fun epsabs_ack!1805 () (_ BitVec 64))
(declare-fun epsrel_ack!1806 () (_ BitVec 64))
(declare-fun b_ack!1808 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1807)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1805) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1806)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1806)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1808)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1808)
                                   ((_ to_fp 11 53) #x3fb28d008cb75589))))))
  (FPCHECK_FDIV_ACCURACY
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x7ff8000000000001))
    #x3fedd67c13dcdd9f)))

(check-sat)
(exit)
