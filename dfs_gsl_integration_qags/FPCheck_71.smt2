(declare-fun limit_ack!729 () (_ BitVec 64))
(declare-fun epsabs_ack!727 () (_ BitVec 64))
(declare-fun epsrel_ack!728 () (_ BitVec 64))
(declare-fun b_ack!726 () (_ BitVec 64))
(declare-fun a_ack!730 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!729)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!727) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!728)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!728)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!730)
                                   ((_ to_fp 11 53) b_ack!726))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!726)
                  ((_ to_fp 11 53) a_ack!730)))
  #x3febae995e9cb2f3))

(check-sat)
(exit)
