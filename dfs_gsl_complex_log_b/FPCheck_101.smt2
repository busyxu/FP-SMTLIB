(declare-fun y1_ack!820 () (_ BitVec 64))
(declare-fun x1_ack!821 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!821))
             (fp.abs ((_ to_fp 11 53) y1_ack!820)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!821))
          (fp.abs ((_ to_fp 11 53) y1_ack!820)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!821))
          (fp.abs ((_ to_fp 11 53) y1_ack!820)))))

(check-sat)
(exit)
