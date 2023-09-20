(declare-fun a_ack!17 () (_ BitVec 32))
(declare-fun b_ack!16 () (_ BitVec 32))
(assert (not (bvslt a_ack!17 #x00000000)))
(assert (bvslt b_ack!16 a_ack!17))
(assert (bvsle #x00000000 (bvsub b_ack!16 a_ack!17)))

(check-sat)
(exit)
