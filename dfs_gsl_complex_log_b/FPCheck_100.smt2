(declare-fun y1_ack!816 () (_ BitVec 64))
(declare-fun x1_ack!817 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!817))
             (fp.abs ((_ to_fp 11 53) y1_ack!816)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!817))
          (fp.abs ((_ to_fp 11 53) y1_ack!816)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!817))
          (fp.abs ((_ to_fp 11 53) y1_ack!816)))))

(check-sat)
(exit)
