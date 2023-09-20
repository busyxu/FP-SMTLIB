(declare-fun b_ack!24 () (_ BitVec 32))
(declare-fun a_ack!25 () (_ BitVec 32))
(assert (not (bvslt b_ack!24 #x00000000)))
(assert (not (bvslt a_ack!25 #x00000000)))
(assert (not (= #x00000000 a_ack!25)))
(assert (not (bvslt b_ack!24 a_ack!25)))

(check-sat)
(exit)
