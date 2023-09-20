(declare-fun a_ack!5358 () (_ BitVec 32))
(declare-fun b_ack!5357 () (_ BitVec 32))
(assert (not (bvslt a_ack!5358 #x00000000)))
(assert (bvslt b_ack!5357 a_ack!5358))
(assert (bvsle #x00000000 (bvsub b_ack!5357 a_ack!5358)))

(check-sat)
(exit)
