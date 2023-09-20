(declare-fun a_ack!24 () (_ BitVec 32))
(assert (bvslt a_ack!24 #x00000000))

(check-sat)
(exit)
