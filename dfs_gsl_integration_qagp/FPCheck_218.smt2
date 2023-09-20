(declare-fun limit_ack!3698 () (_ BitVec 64))
(declare-fun epsabs_ack!3703 () (_ BitVec 64))
(declare-fun epsrel_ack!3697 () (_ BitVec 64))
(declare-fun a_ack!3704 () (_ BitVec 64))
(declare-fun x1_ack!3699 () (_ BitVec 64))
(declare-fun x2_ack!3700 () (_ BitVec 64))
(declare-fun x3_ack!3701 () (_ BitVec 64))
(declare-fun b_ack!3702 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3698)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3703) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3697)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3697)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3699) ((_ to_fp 11 53) a_ack!3704))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3700) ((_ to_fp 11 53) x1_ack!3699))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3701) ((_ to_fp 11 53) x2_ack!3700))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3702) ((_ to_fp 11 53) x3_ack!3701))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3704)
                                   ((_ to_fp 11 53) x1_ack!3699))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3699)
                  ((_ to_fp 11 53) a_ack!3704)))
  #x3fc30e507891e27a))

(check-sat)
(exit)
