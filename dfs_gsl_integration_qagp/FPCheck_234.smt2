(declare-fun limit_ack!4018 () (_ BitVec 64))
(declare-fun epsabs_ack!4023 () (_ BitVec 64))
(declare-fun epsrel_ack!4017 () (_ BitVec 64))
(declare-fun a_ack!4024 () (_ BitVec 64))
(declare-fun x1_ack!4019 () (_ BitVec 64))
(declare-fun x2_ack!4020 () (_ BitVec 64))
(declare-fun x3_ack!4021 () (_ BitVec 64))
(declare-fun b_ack!4022 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4018)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4023) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4017)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4017)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4019) ((_ to_fp 11 53) a_ack!4024))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4020) ((_ to_fp 11 53) x1_ack!4019))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4021) ((_ to_fp 11 53) x2_ack!4020))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4022) ((_ to_fp 11 53) x3_ack!4021))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4024)
                                   ((_ to_fp 11 53) x1_ack!4019))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4019)
                                   ((_ to_fp 11 53) a_ack!4024)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4024)
                    ((_ to_fp 11 53) x1_ack!4019)))
    a!1)))

(check-sat)
(exit)
