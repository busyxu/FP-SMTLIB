(declare-fun a_ack!2033 () (_ BitVec 32))
(declare-fun b_ack!2032 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!2033 #x00000000)))
(assert (not (bvslt b_ack!2032 #x00000000)))
(assert (not (= #x00000000 a_ack!2033)))
(assert (= #x00000001 a_ack!2033))
(assert (not (bvsle #x00000002 b_ack!2032)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2032)))

(check-sat)
(exit)
