(declare-fun limit_ack!3074 () (_ BitVec 64))
(declare-fun epsabs_ack!3079 () (_ BitVec 64))
(declare-fun epsrel_ack!3073 () (_ BitVec 64))
(declare-fun a_ack!3080 () (_ BitVec 64))
(declare-fun x1_ack!3075 () (_ BitVec 64))
(declare-fun x2_ack!3076 () (_ BitVec 64))
(declare-fun x3_ack!3077 () (_ BitVec 64))
(declare-fun b_ack!3078 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!3074)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3079) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3073)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3073)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3075) ((_ to_fp 11 53) a_ack!3080))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3076) ((_ to_fp 11 53) x1_ack!3075))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3077) ((_ to_fp 11 53) x2_ack!3076))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3078) ((_ to_fp 11 53) x3_ack!3077))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3080)
                                   ((_ to_fp 11 53) x1_ack!3075))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
