(declare-fun y_ack!84 () (_ BitVec 64))
(declare-fun x_ack!85 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!85))
             (fp.abs ((_ to_fp 11 53) y_ack!84)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!85))
          (fp.abs ((_ to_fp 11 53) y_ack!84)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!85))
          (fp.abs ((_ to_fp 11 53) y_ack!84)))))

(check-sat)
(exit)
