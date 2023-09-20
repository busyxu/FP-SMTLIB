(declare-fun a_ack!21 () (_ BitVec 32))
(assert (bvslt a_ack!21 #x00000000))
(assert (bvsle #x00000000 a_ack!21))

(check-sat)
(exit)
