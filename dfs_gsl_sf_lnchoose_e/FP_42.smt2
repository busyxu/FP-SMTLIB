(declare-fun b_ack!648 () (_ BitVec 32))
(declare-fun a_ack!649 () (_ BitVec 32))
(assert (bvult a_ack!649 b_ack!648))

(check-sat)
(exit)
