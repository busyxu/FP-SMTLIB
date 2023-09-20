(declare-fun limit_ack!4892 () (_ BitVec 64))
(declare-fun epsabs_ack!4897 () (_ BitVec 64))
(declare-fun a_ack!4898 () (_ BitVec 64))
(declare-fun x1_ack!4893 () (_ BitVec 64))
(declare-fun x2_ack!4894 () (_ BitVec 64))
(declare-fun x3_ack!4895 () (_ BitVec 64))
(declare-fun b_ack!4896 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4892)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4897)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4893) ((_ to_fp 11 53) a_ack!4898))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4894) ((_ to_fp 11 53) x1_ack!4893))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4895) ((_ to_fp 11 53) x2_ack!4894))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4896) ((_ to_fp 11 53) x3_ack!4895))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4898)
                                   ((_ to_fp 11 53) x1_ack!4893))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4893)
                  ((_ to_fp 11 53) a_ack!4898)))
  #x3fedc3d9a4b011c6))

(check-sat)
(exit)
