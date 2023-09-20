(declare-fun key_ack!3860 () (_ BitVec 32))
(declare-fun limit_ack!3859 () (_ BitVec 64))
(declare-fun epsabs_ack!3858 () (_ BitVec 64))
(declare-fun b_ack!3857 () (_ BitVec 64))
(declare-fun a_ack!3861 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!3860 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!3860)))
(assert (= #x00000001 key_ack!3860))
(assert (not (bvult #x00000000000003e8 limit_ack!3859)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3858)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3861)
                                   ((_ to_fp 11 53) b_ack!3857))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3857)
                                   ((_ to_fp 11 53) a_ack!3861)))
                   ((_ to_fp 11 53) #x3fefba009d4d09b1))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3861)
                    ((_ to_fp 11 53) b_ack!3857)))
    a!1)))

(check-sat)
(exit)
