(declare-fun key_ack!2205 () (_ BitVec 32))
(declare-fun limit_ack!2204 () (_ BitVec 64))
(declare-fun epsabs_ack!2203 () (_ BitVec 64))
(declare-fun b_ack!2202 () (_ BitVec 64))
(declare-fun a_ack!2206 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!2205 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2205)))
(assert (= #x00000001 key_ack!2205))
(assert (not (bvult #x00000000000003e8 limit_ack!2204)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2203)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2206)
                                   ((_ to_fp 11 53) b_ack!2202))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2206)
                                   ((_ to_fp 11 53) b_ack!2202))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (CF_log a!1)
            ((_ to_fp 11 53) #x7ff8000000000001))
    #x3fdabfd7e03c2fa6)))

(check-sat)
(exit)
