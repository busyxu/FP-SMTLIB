(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun e0_ack!25 () (_ BitVec 64))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) e0_ack!25)
          ((_ to_fp 11 53) e0_ack!25))))

(check-sat)
(exit)
