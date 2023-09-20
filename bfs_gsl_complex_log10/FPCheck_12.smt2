(declare-fun y_ack!48 () (_ BitVec 64))
(declare-fun x_ack!49 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!49))
             (fp.abs ((_ to_fp 11 53) y_ack!48)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!49))
          (fp.abs ((_ to_fp 11 53) y_ack!48)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!49))
          (fp.abs ((_ to_fp 11 53) y_ack!48)))))

(check-sat)
(exit)
