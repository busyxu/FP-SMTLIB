(declare-fun y1_ack!824 () (_ BitVec 64))
(declare-fun x1_ack!825 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!825))
             (fp.abs ((_ to_fp 11 53) y1_ack!824)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!825))
          (fp.abs ((_ to_fp 11 53) y1_ack!824)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!825))
          (fp.abs ((_ to_fp 11 53) y1_ack!824)))))

(check-sat)
(exit)
