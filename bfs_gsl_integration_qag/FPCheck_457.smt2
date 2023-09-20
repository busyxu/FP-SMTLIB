(declare-fun key_ack!4785 () (_ BitVec 32))
(declare-fun limit_ack!4784 () (_ BitVec 64))
(declare-fun epsabs_ack!4783 () (_ BitVec 64))
(declare-fun b_ack!4782 () (_ BitVec 64))
(declare-fun a_ack!4786 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!4785 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4785)))
(assert (= #x00000001 key_ack!4785))
(assert (not (bvult #x00000000000003e8 limit_ack!4784)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4783)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4786)
                                   ((_ to_fp 11 53) b_ack!4782))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4782)
                                   ((_ to_fp 11 53) a_ack!4786)))
                   ((_ to_fp 11 53) #x3fe2c13a049dfa24))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4786)
                                   ((_ to_fp 11 53) b_ack!4782)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
