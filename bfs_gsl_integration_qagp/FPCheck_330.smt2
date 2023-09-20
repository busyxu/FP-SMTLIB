(declare-fun limit_ack!4962 () (_ BitVec 64))
(declare-fun epsabs_ack!4967 () (_ BitVec 64))
(declare-fun a_ack!4968 () (_ BitVec 64))
(declare-fun x1_ack!4963 () (_ BitVec 64))
(declare-fun x2_ack!4964 () (_ BitVec 64))
(declare-fun x3_ack!4965 () (_ BitVec 64))
(declare-fun b_ack!4966 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4962)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4967)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4963) ((_ to_fp 11 53) a_ack!4968))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4964) ((_ to_fp 11 53) x1_ack!4963))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4965) ((_ to_fp 11 53) x2_ack!4964))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4966) ((_ to_fp 11 53) x3_ack!4965))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4968)
                                   ((_ to_fp 11 53) x1_ack!4963))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4963)
                                   ((_ to_fp 11 53) a_ack!4968)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4968)
                    ((_ to_fp 11 53) x1_ack!4963)))
    a!1)))

(check-sat)
(exit)
