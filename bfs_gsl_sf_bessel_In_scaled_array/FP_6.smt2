(declare-fun a_ack!35 () (_ BitVec 32))
(declare-fun b_ack!34 () (_ BitVec 32))
(assert (bvslt b_ack!34 a_ack!35))
(assert (bvsle #x00000000 (bvsub b_ack!34 a_ack!35)))

(check-sat)
(exit)
