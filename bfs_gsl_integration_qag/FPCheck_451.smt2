(declare-fun key_ack!4720 () (_ BitVec 32))
(declare-fun limit_ack!4719 () (_ BitVec 64))
(declare-fun epsabs_ack!4718 () (_ BitVec 64))
(declare-fun b_ack!4717 () (_ BitVec 64))
(declare-fun a_ack!4721 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!4720 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4720)))
(assert (= #x00000001 key_ack!4720))
(assert (not (bvult #x00000000000003e8 limit_ack!4719)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4718)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4721)
                                   ((_ to_fp 11 53) b_ack!4717))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4717)
                                   ((_ to_fp 11 53) a_ack!4721)))
                   ((_ to_fp 11 53) #x3fe2c13a049dfa24))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4721)
                    ((_ to_fp 11 53) b_ack!4717)))
    a!1)))

(check-sat)
(exit)
