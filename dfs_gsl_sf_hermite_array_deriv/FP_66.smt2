(declare-fun b_ack!1151 () (_ BitVec 32))
(declare-fun a_ack!1152 () (_ BitVec 32))
(assert (not (bvslt b_ack!1151 #x00000000)))
(assert (not (bvslt a_ack!1152 #x00000000)))
(assert (= #x00000000 a_ack!1152))
(assert (bvslt b_ack!1151 #x00000000))

(check-sat)
(exit)
