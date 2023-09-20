(declare-fun a_ack!1 () (_ BitVec 32))
(assert (not (bvslt a_ack!1 #x00000000)))
(assert (not (= #x00000000 a_ack!1)))

(check-sat)
(exit)
