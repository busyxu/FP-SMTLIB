(declare-fun key_ack!4815 () (_ BitVec 32))
(declare-fun limit_ack!4814 () (_ BitVec 64))
(declare-fun epsabs_ack!4813 () (_ BitVec 64))
(declare-fun b_ack!4812 () (_ BitVec 64))
(declare-fun a_ack!4816 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!4815 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4815)))
(assert (= #x00000001 key_ack!4815))
(assert (not (bvult #x00000000000003e8 limit_ack!4814)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4813)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4816)
                                   ((_ to_fp 11 53) b_ack!4812))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4812)
                                   ((_ to_fp 11 53) a_ack!4816)))
                   ((_ to_fp 11 53) #x3fe2c13a049dfa24))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4816)
                                   ((_ to_fp 11 53) b_ack!4812)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
