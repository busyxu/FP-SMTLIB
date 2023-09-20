(declare-fun b_ack!0 () (_ BitVec 32))
(declare-fun a_ack!1 () (_ BitVec 32))
(assert (not (bvult a_ack!1 b_ack!0)))
(assert (not (= b_ack!0 a_ack!1)))

(check-sat)
(exit)
