(declare-fun a_ack!1244 () (_ BitVec 32))
(assert (bvslt a_ack!1244 #x00000000))

(check-sat)
(exit)
