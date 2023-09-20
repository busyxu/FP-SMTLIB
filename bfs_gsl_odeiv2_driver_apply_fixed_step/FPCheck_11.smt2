(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!19 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y0_ack!19)
          ((_ to_fp 11 53) y0_ack!19))
  #x3ff0000000000000))

(check-sat)
(exit)
