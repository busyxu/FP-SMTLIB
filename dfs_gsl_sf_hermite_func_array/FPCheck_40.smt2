(declare-fun a_ack!149 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!148 () (_ BitVec 64))
(assert (not (bvslt a_ack!149 #x00000000)))
(assert (not (= #x00000000 a_ack!149)))
(assert (not (= #x00000001 a_ack!149)))
(assert (bvsle #x00000002 a_ack!149))
(assert (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 b_ack!148))

(check-sat)
(exit)
