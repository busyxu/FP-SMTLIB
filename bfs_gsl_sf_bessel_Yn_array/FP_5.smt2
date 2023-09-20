(declare-fun a_ack!13 () (_ BitVec 32))
(declare-fun b_ack!12 () (_ BitVec 32))
(assert (bvslt a_ack!13 #x00000000))
(assert (not (bvsle #x00000000 (bvsub b_ack!12 a_ack!13))))

(check-sat)
(exit)
