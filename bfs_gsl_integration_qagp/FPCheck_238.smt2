(declare-fun limit_ack!3597 () (_ BitVec 64))
(declare-fun epsabs_ack!3602 () (_ BitVec 64))
(declare-fun a_ack!3603 () (_ BitVec 64))
(declare-fun x1_ack!3598 () (_ BitVec 64))
(declare-fun x2_ack!3599 () (_ BitVec 64))
(declare-fun x3_ack!3600 () (_ BitVec 64))
(declare-fun b_ack!3601 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3597)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3602)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3598) ((_ to_fp 11 53) a_ack!3603))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3599) ((_ to_fp 11 53) x1_ack!3598))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3600) ((_ to_fp 11 53) x2_ack!3599))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3601) ((_ to_fp 11 53) x3_ack!3600))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3603)
                                   ((_ to_fp 11 53) x1_ack!3598))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3598)
                                   ((_ to_fp 11 53) a_ack!3603)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3603)
                    ((_ to_fp 11 53) x1_ack!3598)))
    a!1)))

(check-sat)
(exit)
