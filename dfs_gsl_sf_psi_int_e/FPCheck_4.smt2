(declare-fun a_ack!9 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvsle a_ack!9 #x00000000)))
(assert (not (bvsle a_ack!9 #x00000064)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!9)))

(check-sat)
(exit)
