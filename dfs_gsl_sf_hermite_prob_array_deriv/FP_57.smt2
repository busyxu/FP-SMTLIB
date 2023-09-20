(declare-fun b_ack!1000 () (_ BitVec 32))
(declare-fun a_ack!1001 () (_ BitVec 32))
(assert (not (bvslt b_ack!1000 #x00000000)))
(assert (not (bvslt a_ack!1001 #x00000000)))
(assert (= #x00000000 a_ack!1001))
(assert (bvslt b_ack!1000 #x00000000))

(check-sat)
(exit)
