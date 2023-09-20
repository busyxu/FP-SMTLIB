(declare-fun a_ack!16 () (_ BitVec 32))
(assert (bvslt a_ack!16 #x00000000))

(check-sat)
(exit)
