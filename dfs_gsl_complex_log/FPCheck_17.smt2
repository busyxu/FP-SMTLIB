(declare-fun y_ack!80 () (_ BitVec 64))
(declare-fun x_ack!81 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!81))
             (fp.abs ((_ to_fp 11 53) y_ack!80)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!81))
          (fp.abs ((_ to_fp 11 53) y_ack!80)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!81))
          (fp.abs ((_ to_fp 11 53) y_ack!80)))))

(check-sat)
(exit)
