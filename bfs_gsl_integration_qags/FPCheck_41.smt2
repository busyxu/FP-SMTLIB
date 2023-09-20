(declare-fun limit_ack!355 () (_ BitVec 64))
(declare-fun epsabs_ack!354 () (_ BitVec 64))
(declare-fun b_ack!353 () (_ BitVec 64))
(declare-fun a_ack!356 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!355)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!354)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!356)
                                   ((_ to_fp 11 53) b_ack!353))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!353)
                                   ((_ to_fp 11 53) a_ack!356)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!356)
                    ((_ to_fp 11 53) b_ack!353)))
    a!1)))

(check-sat)
(exit)
