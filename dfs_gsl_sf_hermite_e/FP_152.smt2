(declare-fun a_ack!1879 () (_ BitVec 32))
(assert (bvslt a_ack!1879 #x00000000))

(check-sat)
(exit)
