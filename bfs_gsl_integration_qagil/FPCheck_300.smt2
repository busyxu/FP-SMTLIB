(declare-fun limit_ack!1949 () (_ BitVec 64))
(declare-fun epsabs_ack!1947 () (_ BitVec 64))
(declare-fun epsrel_ack!1948 () (_ BitVec 64))
(declare-fun b_ack!1950 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1949)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1947) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1948)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1948)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1950)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FINVALID_SQRT
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1950)
          ((_ to_fp 11 53) #x3fb28d008cb75589))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1950)
          ((_ to_fp 11 53) #x3fb28d008cb75589))))

(check-sat)
(exit)
