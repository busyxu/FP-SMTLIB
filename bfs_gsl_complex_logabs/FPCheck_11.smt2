(declare-fun y_ack!44 () (_ BitVec 64))
(declare-fun x_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!45))
             (fp.abs ((_ to_fp 11 53) y_ack!44)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!45))
          (fp.abs ((_ to_fp 11 53) y_ack!44)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!45))
          (fp.abs ((_ to_fp 11 53) y_ack!44)))))

(check-sat)
(exit)
