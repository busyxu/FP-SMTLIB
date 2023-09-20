(declare-fun a_ack!130 () (_ BitVec 64))
(declare-fun c_ack!129 () (_ BitVec 64))
(declare-fun b_ack!128 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!128)
                           ((_ to_fp 11 53) b_ack!128))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!130))
                           ((_ to_fp 11 53) c_ack!129)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!128)
                           ((_ to_fp 11 53) b_ack!128))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!130))
                           ((_ to_fp 11 53) c_ack!129)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #xbfe0000000000000 b_ack!128))

(check-sat)
(exit)
