(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x0_ack!18 () (_ BitVec 64))
(declare-fun x1_ack!17 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW
  x1_ack!17
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!18)
          ((_ to_fp 11 53) x0_ack!18))))

(check-sat)
(exit)
