(declare-fun a_ack!2027 () (_ BitVec 32))
(declare-fun b_ack!2026 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!2027 #x00000000)))
(assert (not (bvslt b_ack!2026 #x00000000)))
(assert (not (= #x00000000 a_ack!2027)))
(assert (= #x00000001 a_ack!2027))
(assert (not (bvsle #x00000002 b_ack!2026)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2026)))

(check-sat)
(exit)
