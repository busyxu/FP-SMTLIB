(declare-fun key_ack!4810 () (_ BitVec 32))
(declare-fun limit_ack!4809 () (_ BitVec 64))
(declare-fun epsabs_ack!4808 () (_ BitVec 64))
(declare-fun b_ack!4807 () (_ BitVec 64))
(declare-fun a_ack!4811 () (_ BitVec 64))
(assert (not (bvslt key_ack!4810 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4810)))
(assert (= #x00000001 key_ack!4810))
(assert (not (bvult #x00000000000003e8 limit_ack!4809)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4808)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4811)
                                   ((_ to_fp 11 53) b_ack!4807))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
