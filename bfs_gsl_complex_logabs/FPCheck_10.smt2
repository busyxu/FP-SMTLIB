(declare-fun y_ack!40 () (_ BitVec 64))
(declare-fun x_ack!41 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!41))
             (fp.abs ((_ to_fp 11 53) y_ack!40)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!41))
          (fp.abs ((_ to_fp 11 53) y_ack!40)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!41))
          (fp.abs ((_ to_fp 11 53) y_ack!40)))))

(check-sat)
(exit)
