(declare-fun key_ack!4585 () (_ BitVec 32))
(declare-fun limit_ack!4584 () (_ BitVec 64))
(declare-fun epsabs_ack!4583 () (_ BitVec 64))
(declare-fun b_ack!4582 () (_ BitVec 64))
(declare-fun a_ack!4586 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt key_ack!4585 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4585)))
(assert (= #x00000001 key_ack!4585))
(assert (not (bvult #x00000000000003e8 limit_ack!4584)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4583)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4586)
                                   ((_ to_fp 11 53) b_ack!4582))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4582)
                  ((_ to_fp 11 53) a_ack!4586)))
  #x3fe2c13a049dfa24))

(check-sat)
(exit)
