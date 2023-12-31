(declare-fun limit_ack!3079 () (_ BitVec 64))
(declare-fun epsabs_ack!3084 () (_ BitVec 64))
(declare-fun a_ack!3085 () (_ BitVec 64))
(declare-fun x1_ack!3080 () (_ BitVec 64))
(declare-fun x2_ack!3081 () (_ BitVec 64))
(declare-fun x3_ack!3082 () (_ BitVec 64))
(declare-fun b_ack!3083 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!3079)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3084)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3080) ((_ to_fp 11 53) a_ack!3085))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3081) ((_ to_fp 11 53) x1_ack!3080))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3082) ((_ to_fp 11 53) x2_ack!3081))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3083) ((_ to_fp 11 53) x3_ack!3082))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3085)
                                   ((_ to_fp 11 53) x1_ack!3080))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
