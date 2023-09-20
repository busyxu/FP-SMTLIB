(declare-fun a_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!56 () (_ BitVec 64))
(declare-fun c_ack!55 () (_ BitVec 64))
(declare-fun b_ack!54 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!57) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!54)
                                   ((_ to_fp 11 53) c_ack!55)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!56)
                                   ((_ to_fp 11 53) a_ack!57))))))
  (FPCHECK_FADD_UNDERFLOW #x0000000000000000 a!1)))

(check-sat)
(exit)
