(declare-fun limit_ack!3779 () (_ BitVec 64))
(declare-fun epsabs_ack!3784 () (_ BitVec 64))
(declare-fun a_ack!3785 () (_ BitVec 64))
(declare-fun x1_ack!3780 () (_ BitVec 64))
(declare-fun x2_ack!3781 () (_ BitVec 64))
(declare-fun x3_ack!3782 () (_ BitVec 64))
(declare-fun b_ack!3783 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3779)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3784)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3780) ((_ to_fp 11 53) a_ack!3785))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3781) ((_ to_fp 11 53) x1_ack!3780))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3782) ((_ to_fp 11 53) x2_ack!3781))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3783) ((_ to_fp 11 53) x3_ack!3782))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3785)
                                   ((_ to_fp 11 53) x1_ack!3780))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3780)
                                   ((_ to_fp 11 53) a_ack!3785)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3785)
                    ((_ to_fp 11 53) x1_ack!3780)))
    a!1)))

(check-sat)
(exit)
