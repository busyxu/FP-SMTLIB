(declare-fun key_ack!2340 () (_ BitVec 32))
(declare-fun limit_ack!2339 () (_ BitVec 64))
(declare-fun epsabs_ack!2338 () (_ BitVec 64))
(declare-fun b_ack!2337 () (_ BitVec 64))
(declare-fun a_ack!2341 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!2340 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2340)))
(assert (= #x00000001 key_ack!2340))
(assert (not (bvult #x00000000000003e8 limit_ack!2339)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2338)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2341)
                                   ((_ to_fp 11 53) b_ack!2337))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2337)
                                   ((_ to_fp 11 53) a_ack!2341)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2341)
                                   ((_ to_fp 11 53) b_ack!2337)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
