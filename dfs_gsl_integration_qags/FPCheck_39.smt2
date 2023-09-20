(declare-fun limit_ack!424 () (_ BitVec 64))
(declare-fun epsabs_ack!422 () (_ BitVec 64))
(declare-fun epsrel_ack!423 () (_ BitVec 64))
(declare-fun b_ack!421 () (_ BitVec 64))
(declare-fun a_ack!425 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!424)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!422) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!423)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!423)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!425)
                                   ((_ to_fp 11 53) b_ack!421))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!421)
                                   ((_ to_fp 11 53) a_ack!425)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!425)
                                   ((_ to_fp 11 53) b_ack!421)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
