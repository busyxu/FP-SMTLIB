(declare-fun b_ack!3 () (_ BitVec 32))
(declare-fun a_ack!4 () (_ BitVec 32))
(assert (not (bvslt b_ack!3 #x00000000)))
(assert (not (bvslt a_ack!4 #x00000000)))
(assert (not (= #x00000000 a_ack!4)))

(check-sat)
(exit)
