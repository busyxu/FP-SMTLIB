(declare-fun c_ack!82 () (_ BitVec 64))
(declare-fun a_ack!83 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!83) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!83)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!82))))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x40026bb1bbb55516)))

(check-sat)
(exit)
