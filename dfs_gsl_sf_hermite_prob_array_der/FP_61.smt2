(declare-fun b_ack!1008 () (_ BitVec 32))
(declare-fun a_ack!1009 () (_ BitVec 32))
(assert (not (bvslt b_ack!1008 #x00000000)))
(assert (not (bvslt a_ack!1009 #x00000000)))
(assert (not (= #x00000000 a_ack!1009)))
(assert (not (bvslt b_ack!1008 a_ack!1009)))

(check-sat)
(exit)
