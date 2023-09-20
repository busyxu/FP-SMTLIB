(declare-fun b_ack!139 () (_ BitVec 32))
(declare-fun a_ack!140 () (_ BitVec 32))
(assert (not (bvslt b_ack!139 #x00000000)))
(assert (bvslt a_ack!140 b_ack!139))

(check-sat)
(exit)
