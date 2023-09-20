(declare-fun b_ack!4 () (_ BitVec 32))
(declare-fun a_ack!5 () (_ BitVec 32))
(assert (not (bvult a_ack!5 b_ack!4)))
(assert (not (= b_ack!4 a_ack!5)))
(assert (not (= #x00000000 b_ack!4)))

(check-sat)
(exit)
