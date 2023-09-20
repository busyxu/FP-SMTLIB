(declare-fun a_ack!83 () (_ BitVec 32))
(declare-fun b_ack!82 () (_ BitVec 32))
(assert (bvslt b_ack!82 a_ack!83))
(assert (bvsle #x00000000 (bvsub b_ack!82 a_ack!83)))
(assert (not (bvsle #x00000001 (bvsub b_ack!82 a_ack!83))))

(check-sat)
(exit)
