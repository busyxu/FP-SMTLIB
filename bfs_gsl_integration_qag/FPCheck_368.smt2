(declare-fun key_ack!3880 () (_ BitVec 32))
(declare-fun limit_ack!3879 () (_ BitVec 64))
(declare-fun epsabs_ack!3878 () (_ BitVec 64))
(declare-fun b_ack!3877 () (_ BitVec 64))
(declare-fun a_ack!3881 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt key_ack!3880 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!3880)))
(assert (= #x00000001 key_ack!3880))
(assert (not (bvult #x00000000000003e8 limit_ack!3879)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3878)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3881)
                                   ((_ to_fp 11 53) b_ack!3877))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3877)
                                   ((_ to_fp 11 53) a_ack!3881)))
                   ((_ to_fp 11 53) #x3fefba009d4d09b1))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3881)
                                   ((_ to_fp 11 53) b_ack!3877)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
