(declare-fun a_ack!762 () (_ BitVec 32))
(assert (bvslt a_ack!762 #x00000000))

(check-sat)
(exit)
