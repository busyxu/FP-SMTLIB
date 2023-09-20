(declare-fun limit_ack!6730 () (_ BitVec 64))
(declare-fun epsabs_ack!6735 () (_ BitVec 64))
(declare-fun epsrel_ack!6729 () (_ BitVec 64))
(declare-fun a_ack!6736 () (_ BitVec 64))
(declare-fun x1_ack!6731 () (_ BitVec 64))
(declare-fun x2_ack!6732 () (_ BitVec 64))
(declare-fun x3_ack!6733 () (_ BitVec 64))
(declare-fun b_ack!6734 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6730)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6735) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6729)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6729)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6731) ((_ to_fp 11 53) a_ack!6736))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6732) ((_ to_fp 11 53) x1_ack!6731))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6733) ((_ to_fp 11 53) x2_ack!6732))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6734) ((_ to_fp 11 53) x3_ack!6733))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6736)
                                   ((_ to_fp 11 53) x1_ack!6731))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6731)
                  ((_ to_fp 11 53) a_ack!6736)))
  #x3fe2021b401fc120))

(check-sat)
(exit)
