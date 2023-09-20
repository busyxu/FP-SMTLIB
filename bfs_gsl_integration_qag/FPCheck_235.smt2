(declare-fun key_ack!2555 () (_ BitVec 32))
(declare-fun limit_ack!2554 () (_ BitVec 64))
(declare-fun epsabs_ack!2553 () (_ BitVec 64))
(declare-fun b_ack!2552 () (_ BitVec 64))
(declare-fun a_ack!2556 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!2555 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2555)))
(assert (= #x00000001 key_ack!2555))
(assert (not (bvult #x00000000000003e8 limit_ack!2554)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2553)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2556)
                                   ((_ to_fp 11 53) b_ack!2552))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2556)
                           ((_ to_fp 11 53) b_ack!2552))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2552)
                                   ((_ to_fp 11 53) a_ack!2556)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!3)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!5 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!3)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3fdabfd7e03c2fa6))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fc092f69f826d57)
            (fp.add roundNearestTiesToEven a!4 a!5))))))

(check-sat)
(exit)
