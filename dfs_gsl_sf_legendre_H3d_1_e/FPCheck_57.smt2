(declare-fun b_ack!225 () (_ BitVec 64))
(declare-fun a_ack!226 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!225)
                       ((_ to_fp 11 53) a_ack!226)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!225) ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!225)
                  ((_ to_fp 11 53) a_ack!226)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!225)
                  ((_ to_fp 11 53) a_ack!226)))))

(check-sat)
(exit)
