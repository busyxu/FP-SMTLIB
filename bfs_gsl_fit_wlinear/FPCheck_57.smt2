(declare-fun w0_ack!126 () (_ BitVec 64))
(declare-fun w1_ack!125 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!125) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w1_ack!125)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w1_ack!125))))))
  (FPCHECK_FADD_UNDERFLOW #x0000000000000000 a!1)))

(check-sat)
(exit)
