(declare-fun b_ack!54 () (_ BitVec 32))
(declare-fun a_ack!55 () (_ BitVec 32))
(assert (not (bvult a_ack!55 b_ack!54)))
(assert (not (= b_ack!54 a_ack!55)))
(assert (not (= #x00000000 b_ack!54)))
(assert (bvult a_ack!55 (bvmul #x00000002 b_ack!54)))

(check-sat)
(exit)
