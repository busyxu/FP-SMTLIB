(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!17 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y0_ack!17)
          ((_ to_fp 11 53) y0_ack!17))
  #x3ff0000000000000))

(check-sat)
(exit)
