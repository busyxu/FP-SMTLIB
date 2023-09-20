(declare-fun limit_ack!3818 () (_ BitVec 64))
(declare-fun epsabs_ack!3823 () (_ BitVec 64))
(declare-fun epsrel_ack!3817 () (_ BitVec 64))
(declare-fun a_ack!3824 () (_ BitVec 64))
(declare-fun x1_ack!3819 () (_ BitVec 64))
(declare-fun x2_ack!3820 () (_ BitVec 64))
(declare-fun x3_ack!3821 () (_ BitVec 64))
(declare-fun b_ack!3822 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3818)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3823) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3817)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3817)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3819) ((_ to_fp 11 53) a_ack!3824))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3820) ((_ to_fp 11 53) x1_ack!3819))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3821) ((_ to_fp 11 53) x2_ack!3820))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3822) ((_ to_fp 11 53) x3_ack!3821))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3824)
                                   ((_ to_fp 11 53) x1_ack!3819))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3819)
                                   ((_ to_fp 11 53) a_ack!3824)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3824)
                                   ((_ to_fp 11 53) x1_ack!3819)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
