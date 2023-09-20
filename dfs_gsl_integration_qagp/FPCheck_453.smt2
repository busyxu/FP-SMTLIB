(declare-fun limit_ack!7754 () (_ BitVec 64))
(declare-fun epsabs_ack!7759 () (_ BitVec 64))
(declare-fun epsrel_ack!7753 () (_ BitVec 64))
(declare-fun a_ack!7760 () (_ BitVec 64))
(declare-fun x1_ack!7755 () (_ BitVec 64))
(declare-fun x2_ack!7756 () (_ BitVec 64))
(declare-fun x3_ack!7757 () (_ BitVec 64))
(declare-fun b_ack!7758 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7754)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7759) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7753)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7753)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7755) ((_ to_fp 11 53) a_ack!7760))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7756) ((_ to_fp 11 53) x1_ack!7755))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7757) ((_ to_fp 11 53) x2_ack!7756))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7758) ((_ to_fp 11 53) x3_ack!7757))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7760)
                                   ((_ to_fp 11 53) x1_ack!7755))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7755)
                                   ((_ to_fp 11 53) a_ack!7760)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7760)
                    ((_ to_fp 11 53) x1_ack!7755)))
    a!1)))

(check-sat)
(exit)
