(declare-fun limit_ack!7770 () (_ BitVec 64))
(declare-fun epsabs_ack!7775 () (_ BitVec 64))
(declare-fun epsrel_ack!7769 () (_ BitVec 64))
(declare-fun a_ack!7776 () (_ BitVec 64))
(declare-fun x1_ack!7771 () (_ BitVec 64))
(declare-fun x2_ack!7772 () (_ BitVec 64))
(declare-fun x3_ack!7773 () (_ BitVec 64))
(declare-fun b_ack!7774 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7770)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7775) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7769)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7769)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7771) ((_ to_fp 11 53) a_ack!7776))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7772) ((_ to_fp 11 53) x1_ack!7771))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7773) ((_ to_fp 11 53) x2_ack!7772))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7774) ((_ to_fp 11 53) x3_ack!7773))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7776)
                                   ((_ to_fp 11 53) x1_ack!7771))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7771)
                                   ((_ to_fp 11 53) a_ack!7776)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7776)
                    ((_ to_fp 11 53) x1_ack!7771)))
    a!1)))

(check-sat)
(exit)
