(declare-fun b_ack!290 () (_ BitVec 32))
(declare-fun a_ack!291 () (_ BitVec 32))
(assert (not (bvult a_ack!291 b_ack!290)))
(assert (not (= b_ack!290 a_ack!291)))
(assert (not (= #x00000000 b_ack!290)))
(assert (not (bvule a_ack!291 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!290) a_ack!291))
(assert (not (bvult (bvsub a_ack!291 (bvsub a_ack!291 b_ack!290)) #x00000040)))
(assert (not (bvult a_ack!291 (bvsub a_ack!291 b_ack!290))))
(assert (not (= (bvsub a_ack!291 b_ack!290) a_ack!291)))
(assert (= #x00000000 (bvsub a_ack!291 b_ack!290)))

(check-sat)
(exit)
