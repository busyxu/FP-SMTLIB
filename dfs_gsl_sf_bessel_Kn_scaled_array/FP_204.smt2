(declare-fun a_ack!5363 () (_ BitVec 32))
(declare-fun b_ack!5362 () (_ BitVec 32))
(assert (bvslt a_ack!5363 #x00000000))
(assert (bvsle #x00000000 (bvsub b_ack!5362 a_ack!5363)))
(assert (not (bvsle #x00000001 (bvsub b_ack!5362 a_ack!5363))))

(check-sat)
(exit)
