(declare-fun limit_ack!4464 () (_ BitVec 64))
(declare-fun epsabs_ack!4462 () (_ BitVec 64))
(declare-fun epsrel_ack!4463 () (_ BitVec 64))
(declare-fun b_ack!4461 () (_ BitVec 64))
(declare-fun a_ack!4465 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4464)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4462) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4463)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4463)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4465)
                                   ((_ to_fp 11 53) b_ack!4461))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4461)
                                   ((_ to_fp 11 53) a_ack!4465)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4465)
                    ((_ to_fp 11 53) b_ack!4461)))
    a!1)))

(check-sat)
(exit)
