(declare-fun a_ack!215 () (_ BitVec 32))
(assert (bvslt a_ack!215 #x00000000))

(check-sat)
(exit)
