(declare-fun key_ack!3380 () (_ BitVec 32))
(declare-fun limit_ack!3379 () (_ BitVec 64))
(declare-fun epsabs_ack!3378 () (_ BitVec 64))
(declare-fun b_ack!3377 () (_ BitVec 64))
(declare-fun a_ack!3381 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!3380 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!3380)))
(assert (= #x00000001 key_ack!3380))
(assert (not (bvult #x00000000000003e8 limit_ack!3379)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3378)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3381)
                                   ((_ to_fp 11 53) b_ack!3377))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3377)
                                   ((_ to_fp 11 53) a_ack!3381)))
                   ((_ to_fp 11 53) #x3fd9f95df119fd62))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3381)
                    ((_ to_fp 11 53) b_ack!3377)))
    a!1)))

(check-sat)
(exit)
