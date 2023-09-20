(declare-fun key_ack!4575 () (_ BitVec 32))
(declare-fun limit_ack!4574 () (_ BitVec 64))
(declare-fun epsabs_ack!4573 () (_ BitVec 64))
(declare-fun b_ack!4572 () (_ BitVec 64))
(declare-fun a_ack!4576 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt key_ack!4575 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4575)))
(assert (= #x00000001 key_ack!4575))
(assert (not (bvult #x00000000000003e8 limit_ack!4574)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4573)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4576)
                                   ((_ to_fp 11 53) b_ack!4572))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4572)
                  ((_ to_fp 11 53) a_ack!4576)))
  #x3fe2c13a049dfa24))

(check-sat)
(exit)
