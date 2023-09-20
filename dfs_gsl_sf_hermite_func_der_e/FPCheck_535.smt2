(declare-fun a_ack!3188 () (_ BitVec 32))
(declare-fun b_ack!3187 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!3188 #x00000000)))
(assert (not (bvslt b_ack!3187 #x00000000)))
(assert (not (= #x00000000 a_ack!3188)))
(assert (= #x00000001 a_ack!3188))
(assert (not (bvsle #x00000002 b_ack!3187)))
(assert (FPCHECK_FMUL_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!3187)
  #x3cb0000000000000))

(check-sat)
(exit)
