(declare-fun limit_ack!685 () (_ BitVec 64))
(declare-fun epsabs_ack!690 () (_ BitVec 64))
(declare-fun a_ack!691 () (_ BitVec 64))
(declare-fun x1_ack!686 () (_ BitVec 64))
(declare-fun x2_ack!687 () (_ BitVec 64))
(declare-fun x3_ack!688 () (_ BitVec 64))
(declare-fun b_ack!689 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!685)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!690)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!686) ((_ to_fp 11 53) a_ack!691))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!687) ((_ to_fp 11 53) x1_ack!686))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!688) ((_ to_fp 11 53) x2_ack!687))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!689) ((_ to_fp 11 53) x3_ack!688))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!691)
                                   ((_ to_fp 11 53) x1_ack!686))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!686)
                                   ((_ to_fp 11 53) a_ack!691)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!691)
                    ((_ to_fp 11 53) x1_ack!686)))
    a!1)))

(check-sat)
(exit)
