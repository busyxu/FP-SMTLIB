(declare-fun key_ack!4875 () (_ BitVec 32))
(declare-fun limit_ack!4874 () (_ BitVec 64))
(declare-fun epsabs_ack!4873 () (_ BitVec 64))
(declare-fun b_ack!4872 () (_ BitVec 64))
(declare-fun a_ack!4876 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!4875 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4875)))
(assert (= #x00000001 key_ack!4875))
(assert (not (bvult #x00000000000003e8 limit_ack!4874)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4873)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4876)
                                   ((_ to_fp 11 53) b_ack!4872))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4876)
                           ((_ to_fp 11 53) b_ack!4872))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4872)
                                   ((_ to_fp 11 53) a_ack!4876)))
                   ((_ to_fp 11 53) #x3fe2c13a049dfa24))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fc5a1f266e47d5c
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
