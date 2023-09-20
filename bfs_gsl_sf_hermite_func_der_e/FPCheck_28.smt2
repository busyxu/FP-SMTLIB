(declare-fun a_ack!180 () (_ BitVec 32))
(declare-fun b_ack!179 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!180 #x00000000)))
(assert (not (bvslt b_ack!179 #x00000000)))
(assert (not (= #x00000000 a_ack!180)))
(assert (= #x00000001 a_ack!180))
(assert (not (bvsle #x00000002 b_ack!179)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!179)))

(check-sat)
(exit)
