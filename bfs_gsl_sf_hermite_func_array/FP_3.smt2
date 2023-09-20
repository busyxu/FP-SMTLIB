(declare-fun a_ack!35 () (_ BitVec 32))
(assert (bvslt a_ack!35 #x00000000))

(check-sat)
(exit)
