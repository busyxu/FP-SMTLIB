(declare-fun a_ack!1 () (_ BitVec 32))
(assert (not (bvslt a_ack!1 #x00000000)))
(assert (= #x00000001 a_ack!1))

(check-sat)
(exit)
