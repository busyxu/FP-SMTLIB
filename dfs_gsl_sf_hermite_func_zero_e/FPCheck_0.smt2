(declare-fun a_ack!6 () (_ BitVec 32))
(declare-fun b_ack!5 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvsle a_ack!6 #x00000000)))
(assert (not (bvslt b_ack!5 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!6 #x00000002) b_ack!5)))
(assert (not (= #x00000000 b_ack!5)))
(assert (not (= #x00000002 a_ack!6)))
(assert (not (bvslt a_ack!6 #x00000015)))
(assert (= #x00000001 b_ack!5))
(assert (bvslt #x00000032 a_ack!6))
(assert (= #x00000000 (bvand a_ack!6 #x00000001)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6)))

(check-sat)
(exit)
