(declare-fun a_ack!30 () (_ BitVec 32))
(declare-fun b_ack!29 () (_ BitVec 32))
(assert (bvslt a_ack!30 #x00000000))
(assert (bvsle #x00000000 (bvsub b_ack!29 a_ack!30)))
(assert (not (bvsle #x00000001 (bvsub b_ack!29 a_ack!30))))

(check-sat)
(exit)
