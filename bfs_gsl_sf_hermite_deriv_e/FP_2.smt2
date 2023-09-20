(declare-fun b_ack!71 () (_ BitVec 32))
(declare-fun a_ack!72 () (_ BitVec 32))
(assert (not (bvslt b_ack!71 #x00000000)))
(assert (not (bvslt a_ack!72 #x00000000)))
(assert (bvslt b_ack!71 a_ack!72))

(check-sat)
(exit)
