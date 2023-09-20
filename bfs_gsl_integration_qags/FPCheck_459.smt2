(declare-fun limit_ack!3715 () (_ BitVec 64))
(declare-fun epsabs_ack!3714 () (_ BitVec 64))
(declare-fun b_ack!3713 () (_ BitVec 64))
(declare-fun a_ack!3716 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3715)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3714)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3716)
                                   ((_ to_fp 11 53) b_ack!3713))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3713)
                                   ((_ to_fp 11 53) a_ack!3716)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3716)
                                   ((_ to_fp 11 53) b_ack!3713)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
