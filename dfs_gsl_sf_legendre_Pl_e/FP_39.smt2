(declare-fun a_ack!434 () (_ BitVec 32))
(assert (bvslt a_ack!434 #x00000000))

(check-sat)
(exit)
