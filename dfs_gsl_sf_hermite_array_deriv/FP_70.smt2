(declare-fun b_ack!1159 () (_ BitVec 32))
(declare-fun a_ack!1160 () (_ BitVec 32))
(assert (not (bvslt b_ack!1159 #x00000000)))
(assert (not (bvslt a_ack!1160 #x00000000)))
(assert (not (= #x00000000 a_ack!1160)))
(assert (not (bvslt b_ack!1159 a_ack!1160)))

(check-sat)
(exit)
