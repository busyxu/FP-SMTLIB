(declare-fun b_ack!40 () (_ BitVec 32))
(declare-fun a_ack!41 () (_ BitVec 32))
(assert (not (bvult a_ack!41 b_ack!40)))
(assert (not (= b_ack!40 a_ack!41)))
(assert (not (= #x00000000 b_ack!40)))
(assert (bvule a_ack!41 #x000000aa))

(check-sat)
(exit)
