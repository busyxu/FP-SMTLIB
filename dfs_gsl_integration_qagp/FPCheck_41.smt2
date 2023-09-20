(declare-fun limit_ack!778 () (_ BitVec 64))
(declare-fun epsabs_ack!783 () (_ BitVec 64))
(declare-fun epsrel_ack!777 () (_ BitVec 64))
(declare-fun a_ack!784 () (_ BitVec 64))
(declare-fun x1_ack!779 () (_ BitVec 64))
(declare-fun x2_ack!780 () (_ BitVec 64))
(declare-fun x3_ack!781 () (_ BitVec 64))
(declare-fun b_ack!782 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!778)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!783) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!777)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!777)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!779) ((_ to_fp 11 53) a_ack!784))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!780) ((_ to_fp 11 53) x1_ack!779))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!781) ((_ to_fp 11 53) x2_ack!780))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!782) ((_ to_fp 11 53) x3_ack!781))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!784)
                                   ((_ to_fp 11 53) x1_ack!779))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!779)
                                   ((_ to_fp 11 53) a_ack!784)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!784)
                                   ((_ to_fp 11 53) x1_ack!779)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
