(declare-fun limit_ack!6882 () (_ BitVec 64))
(declare-fun epsabs_ack!6887 () (_ BitVec 64))
(declare-fun epsrel_ack!6881 () (_ BitVec 64))
(declare-fun a_ack!6888 () (_ BitVec 64))
(declare-fun x1_ack!6883 () (_ BitVec 64))
(declare-fun x2_ack!6884 () (_ BitVec 64))
(declare-fun x3_ack!6885 () (_ BitVec 64))
(declare-fun b_ack!6886 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6882)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6887) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6881)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6881)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6883) ((_ to_fp 11 53) a_ack!6888))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6884) ((_ to_fp 11 53) x1_ack!6883))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6885) ((_ to_fp 11 53) x2_ack!6884))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6886) ((_ to_fp 11 53) x3_ack!6885))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6888)
                                   ((_ to_fp 11 53) x1_ack!6883))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6883)
                                   ((_ to_fp 11 53) a_ack!6888)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6888)
                                   ((_ to_fp 11 53) x1_ack!6883)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
