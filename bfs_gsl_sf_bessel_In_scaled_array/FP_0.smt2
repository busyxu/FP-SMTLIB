(declare-fun a_ack!1 () (_ BitVec 32))
(declare-fun b_ack!0 () (_ BitVec 32))
(assert (bvslt b_ack!0 a_ack!1))

(check-sat)
(exit)
