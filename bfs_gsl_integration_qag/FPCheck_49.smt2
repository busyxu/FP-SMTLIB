(declare-fun key_ack!539 () (_ BitVec 32))
(declare-fun limit_ack!538 () (_ BitVec 64))
(declare-fun epsabs_ack!537 () (_ BitVec 64))
(declare-fun b_ack!536 () (_ BitVec 64))
(declare-fun a_ack!540 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt key_ack!539 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!538)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!537)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!540)
                                   ((_ to_fp 11 53) b_ack!536))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!536)
                                   ((_ to_fp 11 53) a_ack!540)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!540)
                    ((_ to_fp 11 53) b_ack!536)))
    a!1)))

(check-sat)
(exit)
