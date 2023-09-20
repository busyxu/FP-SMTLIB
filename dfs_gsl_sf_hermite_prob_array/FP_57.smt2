(declare-fun a_ack!664 () (_ BitVec 32))
(assert (bvslt a_ack!664 #x00000000))

(check-sat)
(exit)
