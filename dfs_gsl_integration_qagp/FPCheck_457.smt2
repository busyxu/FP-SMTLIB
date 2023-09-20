(declare-fun limit_ack!7826 () (_ BitVec 64))
(declare-fun epsabs_ack!7831 () (_ BitVec 64))
(declare-fun epsrel_ack!7825 () (_ BitVec 64))
(declare-fun a_ack!7832 () (_ BitVec 64))
(declare-fun x1_ack!7827 () (_ BitVec 64))
(declare-fun x2_ack!7828 () (_ BitVec 64))
(declare-fun x3_ack!7829 () (_ BitVec 64))
(declare-fun b_ack!7830 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7826)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7831) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7825)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7825)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7827) ((_ to_fp 11 53) a_ack!7832))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7828) ((_ to_fp 11 53) x1_ack!7827))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7829) ((_ to_fp 11 53) x2_ack!7828))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7830) ((_ to_fp 11 53) x3_ack!7829))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7832)
                                   ((_ to_fp 11 53) x1_ack!7827))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7827)
                                   ((_ to_fp 11 53) a_ack!7832)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7832)
                                   ((_ to_fp 11 53) x1_ack!7827)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
