(declare-fun limit_ack!3513 () (_ BitVec 64))
(declare-fun epsabs_ack!3518 () (_ BitVec 64))
(declare-fun a_ack!3519 () (_ BitVec 64))
(declare-fun x1_ack!3514 () (_ BitVec 64))
(declare-fun x2_ack!3515 () (_ BitVec 64))
(declare-fun x3_ack!3516 () (_ BitVec 64))
(declare-fun b_ack!3517 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3513)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3518)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3514) ((_ to_fp 11 53) a_ack!3519))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3515) ((_ to_fp 11 53) x1_ack!3514))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3516) ((_ to_fp 11 53) x2_ack!3515))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3517) ((_ to_fp 11 53) x3_ack!3516))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3519)
                                   ((_ to_fp 11 53) x1_ack!3514))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3514)
                  ((_ to_fp 11 53) a_ack!3519)))
  #x3fc30e507891e27a))

(check-sat)
(exit)
