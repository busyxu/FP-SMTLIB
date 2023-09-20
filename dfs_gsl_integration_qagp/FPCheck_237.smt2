(declare-fun limit_ack!4074 () (_ BitVec 64))
(declare-fun epsabs_ack!4079 () (_ BitVec 64))
(declare-fun epsrel_ack!4073 () (_ BitVec 64))
(declare-fun a_ack!4080 () (_ BitVec 64))
(declare-fun x1_ack!4075 () (_ BitVec 64))
(declare-fun x2_ack!4076 () (_ BitVec 64))
(declare-fun x3_ack!4077 () (_ BitVec 64))
(declare-fun b_ack!4078 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4074)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4079) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4073)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4073)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4075) ((_ to_fp 11 53) a_ack!4080))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4076) ((_ to_fp 11 53) x1_ack!4075))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4077) ((_ to_fp 11 53) x2_ack!4076))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4078) ((_ to_fp 11 53) x3_ack!4077))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4080)
                                   ((_ to_fp 11 53) x1_ack!4075))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4075)
                                   ((_ to_fp 11 53) a_ack!4080)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4080)
                                   ((_ to_fp 11 53) x1_ack!4075)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
