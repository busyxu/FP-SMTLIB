(declare-fun limit_ack!4906 () (_ BitVec 64))
(declare-fun epsabs_ack!4911 () (_ BitVec 64))
(declare-fun a_ack!4912 () (_ BitVec 64))
(declare-fun x1_ack!4907 () (_ BitVec 64))
(declare-fun x2_ack!4908 () (_ BitVec 64))
(declare-fun x3_ack!4909 () (_ BitVec 64))
(declare-fun b_ack!4910 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4906)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4911)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4907) ((_ to_fp 11 53) a_ack!4912))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4908) ((_ to_fp 11 53) x1_ack!4907))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4909) ((_ to_fp 11 53) x2_ack!4908))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4910) ((_ to_fp 11 53) x3_ack!4909))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4912)
                                   ((_ to_fp 11 53) x1_ack!4907))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4907)
                  ((_ to_fp 11 53) a_ack!4912)))
  #x3fedc3d9a4b011c6))

(check-sat)
(exit)
