(declare-fun b_ack!63 () (_ BitVec 64))
(declare-fun a_ack!64 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!64) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!64)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!63))))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x40026bb1bbb55516)))

(check-sat)
(exit)
