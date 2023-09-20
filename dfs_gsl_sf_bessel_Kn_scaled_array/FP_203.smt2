(declare-fun a_ack!5361 () (_ BitVec 32))
(assert (bvslt a_ack!5361 #x00000000))

(check-sat)
(exit)
