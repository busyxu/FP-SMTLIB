(declare-fun a_ack!16 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvsle a_ack!16 #x00000000)))
(assert (not (bvsle a_ack!16 #x00000064)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!16)))

(check-sat)
(exit)
