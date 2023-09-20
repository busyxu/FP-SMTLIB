(declare-fun limit_ack!6495 () (_ BitVec 64))
(declare-fun epsabs_ack!6500 () (_ BitVec 64))
(declare-fun a_ack!6501 () (_ BitVec 64))
(declare-fun x1_ack!6496 () (_ BitVec 64))
(declare-fun x2_ack!6497 () (_ BitVec 64))
(declare-fun x3_ack!6498 () (_ BitVec 64))
(declare-fun b_ack!6499 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6495)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6500)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6496) ((_ to_fp 11 53) a_ack!6501))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6497) ((_ to_fp 11 53) x1_ack!6496))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6498) ((_ to_fp 11 53) x2_ack!6497))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6499) ((_ to_fp 11 53) x3_ack!6498))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6501)
                                   ((_ to_fp 11 53) x1_ack!6496))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6496)
                                   ((_ to_fp 11 53) a_ack!6501)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6501)
                                   ((_ to_fp 11 53) x1_ack!6496)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
