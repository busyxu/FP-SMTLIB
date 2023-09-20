(declare-fun a_ack!5365 () (_ BitVec 32))
(declare-fun b_ack!5364 () (_ BitVec 32))
(assert (bvslt a_ack!5365 #x00000000))
(assert (not (bvsle #x00000000 (bvsub b_ack!5364 a_ack!5365))))

(check-sat)
(exit)
