(declare-fun key_ack!4245 () (_ BitVec 32))
(declare-fun limit_ack!4244 () (_ BitVec 64))
(declare-fun epsabs_ack!4243 () (_ BitVec 64))
(declare-fun b_ack!4242 () (_ BitVec 64))
(declare-fun a_ack!4246 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!4245 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4245)))
(assert (= #x00000001 key_ack!4245))
(assert (not (bvult #x00000000000003e8 limit_ack!4244)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4243)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4246)
                                   ((_ to_fp 11 53) b_ack!4242))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4242)
                                   ((_ to_fp 11 53) a_ack!4246)))
                   ((_ to_fp 11 53) #x3febacf827b9bb3e))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4246)
                                   ((_ to_fp 11 53) b_ack!4242)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
