(declare-fun limit_ack!3986 () (_ BitVec 64))
(declare-fun epsabs_ack!3991 () (_ BitVec 64))
(declare-fun epsrel_ack!3985 () (_ BitVec 64))
(declare-fun a_ack!3992 () (_ BitVec 64))
(declare-fun x1_ack!3987 () (_ BitVec 64))
(declare-fun x2_ack!3988 () (_ BitVec 64))
(declare-fun x3_ack!3989 () (_ BitVec 64))
(declare-fun b_ack!3990 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3986)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3991) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3985)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3985)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3987) ((_ to_fp 11 53) a_ack!3992))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3988) ((_ to_fp 11 53) x1_ack!3987))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3989) ((_ to_fp 11 53) x2_ack!3988))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3990) ((_ to_fp 11 53) x3_ack!3989))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3992)
                                   ((_ to_fp 11 53) x1_ack!3987))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3987)
                                   ((_ to_fp 11 53) a_ack!3992)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3992)
                    ((_ to_fp 11 53) x1_ack!3987)))
    a!1)))

(check-sat)
(exit)
