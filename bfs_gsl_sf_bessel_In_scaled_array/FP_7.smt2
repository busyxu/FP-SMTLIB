(declare-fun a_ack!37 () (_ BitVec 32))
(declare-fun b_ack!36 () (_ BitVec 32))
(assert (not (bvslt b_ack!36 a_ack!37)))
(assert (bvslt a_ack!37 #x00000000))
(assert (not (bvsle #x00000000 (bvsub b_ack!36 a_ack!37))))

(check-sat)
(exit)
