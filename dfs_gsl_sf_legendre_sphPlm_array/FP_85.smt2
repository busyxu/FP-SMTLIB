(declare-fun b_ack!1530 () (_ BitVec 32))
(declare-fun a_ack!1531 () (_ BitVec 32))
(assert (not (bvslt b_ack!1530 #x00000000)))
(assert (bvslt a_ack!1531 b_ack!1530))

(check-sat)
(exit)
