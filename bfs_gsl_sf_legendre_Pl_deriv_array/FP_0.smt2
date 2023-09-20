(declare-fun a_ack!92 () (_ BitVec 32))
(assert (bvslt a_ack!92 #x00000000))

(check-sat)
(exit)
