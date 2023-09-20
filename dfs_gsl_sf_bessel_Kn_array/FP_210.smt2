(declare-fun a_ack!6041 () (_ BitVec 32))
(declare-fun b_ack!6040 () (_ BitVec 32))
(assert (bvslt a_ack!6041 #x00000000))
(assert (bvsle #x00000000 (bvsub b_ack!6040 a_ack!6041)))
(assert (not (bvsle #x00000001 (bvsub b_ack!6040 a_ack!6041))))

(check-sat)
(exit)
