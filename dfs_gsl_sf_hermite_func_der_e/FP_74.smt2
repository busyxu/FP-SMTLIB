(declare-fun a_ack!1968 () (_ BitVec 32))
(declare-fun b_ack!1967 () (_ BitVec 32))
(assert (not (bvslt a_ack!1968 #x00000000)))
(assert (not (bvslt b_ack!1967 #x00000000)))
(assert (not (= #x00000000 a_ack!1968)))

(check-sat)
(exit)
