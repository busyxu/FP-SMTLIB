(declare-fun b_ack!0 () (_ BitVec 32))
(declare-fun a_ack!1 () (_ BitVec 32))
(assert (bvult a_ack!1 b_ack!0))

(check-sat)
(exit)
