(declare-fun limit_ack!6746 () (_ BitVec 64))
(declare-fun epsabs_ack!6751 () (_ BitVec 64))
(declare-fun epsrel_ack!6745 () (_ BitVec 64))
(declare-fun a_ack!6752 () (_ BitVec 64))
(declare-fun x1_ack!6747 () (_ BitVec 64))
(declare-fun x2_ack!6748 () (_ BitVec 64))
(declare-fun x3_ack!6749 () (_ BitVec 64))
(declare-fun b_ack!6750 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6746)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6751) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6745)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6745)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6747) ((_ to_fp 11 53) a_ack!6752))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6748) ((_ to_fp 11 53) x1_ack!6747))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6749) ((_ to_fp 11 53) x2_ack!6748))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6750) ((_ to_fp 11 53) x3_ack!6749))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6752)
                                   ((_ to_fp 11 53) x1_ack!6747))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6747)
                  ((_ to_fp 11 53) a_ack!6752)))
  #x3fe2021b401fc120))

(check-sat)
(exit)
