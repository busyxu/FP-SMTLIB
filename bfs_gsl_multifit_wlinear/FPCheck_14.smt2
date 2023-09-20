(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun e0_ack!27 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) e0_ack!27)
          ((_ to_fp 11 53) e0_ack!27))))

(check-sat)
(exit)
