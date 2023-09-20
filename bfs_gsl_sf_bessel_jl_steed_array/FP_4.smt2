(declare-fun a_ack!19 () (_ BitVec 32))
(assert (bvslt a_ack!19 #x00000000))
(assert (bvsle #x00000000 a_ack!19))

(check-sat)
(exit)
