(declare-fun a_ack!12 () (_ BitVec 32))
(assert (bvslt a_ack!12 #x00000000))

(check-sat)
(exit)
