(declare-fun a_ack!0 () (_ BitVec 32))
(assert (bvslt a_ack!0 #x00000000))

(check-sat)
(exit)
