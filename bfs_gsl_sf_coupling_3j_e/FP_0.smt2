(declare-fun a_ack!936 () (_ BitVec 32))
(assert (bvslt a_ack!936 #x00000000))

(check-sat)
(exit)
