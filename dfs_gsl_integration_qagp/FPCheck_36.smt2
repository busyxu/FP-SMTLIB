(declare-fun limit_ack!690 () (_ BitVec 64))
(declare-fun epsabs_ack!695 () (_ BitVec 64))
(declare-fun epsrel_ack!689 () (_ BitVec 64))
(declare-fun a_ack!696 () (_ BitVec 64))
(declare-fun x1_ack!691 () (_ BitVec 64))
(declare-fun x2_ack!692 () (_ BitVec 64))
(declare-fun x3_ack!693 () (_ BitVec 64))
(declare-fun b_ack!694 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!690)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!695) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!689)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!689)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!691) ((_ to_fp 11 53) a_ack!696))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!692) ((_ to_fp 11 53) x1_ack!691))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!693) ((_ to_fp 11 53) x2_ack!692))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!694) ((_ to_fp 11 53) x3_ack!693))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!696)
                                   ((_ to_fp 11 53) x1_ack!691))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!691)
                                   ((_ to_fp 11 53) a_ack!696)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!696)
                    ((_ to_fp 11 53) x1_ack!691)))
    a!1)))

(check-sat)
(exit)
