(declare-fun limit_ack!2970 () (_ BitVec 64))
(declare-fun epsabs_ack!2975 () (_ BitVec 64))
(declare-fun epsrel_ack!2969 () (_ BitVec 64))
(declare-fun a_ack!2976 () (_ BitVec 64))
(declare-fun x1_ack!2971 () (_ BitVec 64))
(declare-fun x2_ack!2972 () (_ BitVec 64))
(declare-fun x3_ack!2973 () (_ BitVec 64))
(declare-fun b_ack!2974 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2970)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2975) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2969)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2969)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2971) ((_ to_fp 11 53) a_ack!2976))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2972) ((_ to_fp 11 53) x1_ack!2971))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2973) ((_ to_fp 11 53) x2_ack!2972))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2974) ((_ to_fp 11 53) x3_ack!2973))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2976)
                                   ((_ to_fp 11 53) x1_ack!2971))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2971)
                                   ((_ to_fp 11 53) a_ack!2976)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2976)
                    ((_ to_fp 11 53) x1_ack!2971)))
    a!1)))

(check-sat)
(exit)
