(declare-fun limit_ack!4878 () (_ BitVec 64))
(declare-fun epsabs_ack!4883 () (_ BitVec 64))
(declare-fun a_ack!4884 () (_ BitVec 64))
(declare-fun x1_ack!4879 () (_ BitVec 64))
(declare-fun x2_ack!4880 () (_ BitVec 64))
(declare-fun x3_ack!4881 () (_ BitVec 64))
(declare-fun b_ack!4882 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4878)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4883)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4879) ((_ to_fp 11 53) a_ack!4884))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4880) ((_ to_fp 11 53) x1_ack!4879))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4881) ((_ to_fp 11 53) x2_ack!4880))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4882) ((_ to_fp 11 53) x3_ack!4881))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4884)
                                   ((_ to_fp 11 53) x1_ack!4879))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4879)
                  ((_ to_fp 11 53) a_ack!4884)))
  #x3fedc3d9a4b011c6))

(check-sat)
(exit)
