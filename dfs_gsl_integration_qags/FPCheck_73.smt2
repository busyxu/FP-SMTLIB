(declare-fun limit_ack!749 () (_ BitVec 64))
(declare-fun epsabs_ack!747 () (_ BitVec 64))
(declare-fun epsrel_ack!748 () (_ BitVec 64))
(declare-fun b_ack!746 () (_ BitVec 64))
(declare-fun a_ack!750 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!749)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!747) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!748)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!748)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!750)
                                   ((_ to_fp 11 53) b_ack!746))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!746)
                  ((_ to_fp 11 53) a_ack!750)))
  #x3febae995e9cb2f3))

(check-sat)
(exit)
