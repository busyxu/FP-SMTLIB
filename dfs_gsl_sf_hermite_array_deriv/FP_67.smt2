(declare-fun b_ack!1153 () (_ BitVec 32))
(declare-fun a_ack!1154 () (_ BitVec 32))
(assert (not (bvslt b_ack!1153 #x00000000)))
(assert (not (bvslt a_ack!1154 #x00000000)))
(assert (not (= #x00000000 a_ack!1154)))

(check-sat)
(exit)
