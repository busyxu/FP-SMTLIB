(declare-fun a_ack!5360 () (_ BitVec 32))
(declare-fun b_ack!5359 () (_ BitVec 32))
(assert (not (bvslt a_ack!5360 #x00000000)))
(assert (bvslt b_ack!5359 a_ack!5360))
(assert (bvsle #x00000000 (bvsub b_ack!5359 a_ack!5360)))
(assert (not (bvsle #x00000001 (bvsub b_ack!5359 a_ack!5360))))

(check-sat)
(exit)
