(declare-fun a_ack!130 () (_ BitVec 64))
(declare-fun c_ack!128 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!129 () (_ BitVec 64))
(declare-fun b_ack!127 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!128) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!127)
                                   ((_ to_fp 11 53) c_ack!128)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!129)
                                   ((_ to_fp 11 53) a_ack!130))))))
  (FPCHECK_FADD_UNDERFLOW #x0000000000000000 a!1)))

(check-sat)
(exit)
