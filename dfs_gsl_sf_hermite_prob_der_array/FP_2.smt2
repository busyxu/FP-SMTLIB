(declare-fun b_ack!4 () (_ BitVec 32))
(declare-fun a_ack!5 () (_ BitVec 32))
(assert (not (bvslt b_ack!4 #x00000000)))
(assert (not (bvslt a_ack!5 #x00000000)))
(assert (not (= #x00000000 b_ack!4)))

(check-sat)
(exit)
