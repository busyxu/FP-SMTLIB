(declare-fun b_ack!2 () (_ BitVec 32))
(declare-fun a_ack!3 () (_ BitVec 32))
(assert (not (bvult a_ack!3 b_ack!2)))
(assert (not (= b_ack!2 a_ack!3)))
(assert (not (= #x00000000 b_ack!2)))

(check-sat)
(exit)
