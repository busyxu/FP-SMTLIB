(declare-fun b_ack!0 () (_ BitVec 32))
(declare-fun a_ack!1 () (_ BitVec 32))
(assert (not (bvslt b_ack!0 #x00000000)))
(assert (not (bvslt a_ack!1 #x00000000)))
(assert (= #x00000000 b_ack!0))
(assert (bvsle #x00000001 a_ack!1))

(check-sat)
(exit)
