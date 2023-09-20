(declare-fun b_ack!194 () (_ BitVec 32))
(declare-fun a_ack!195 () (_ BitVec 32))
(assert (not (bvult a_ack!195 b_ack!194)))
(assert (not (= b_ack!194 a_ack!195)))
(assert (not (= #x00000000 b_ack!194)))
(assert (bvult a_ack!195 (bvmul #x00000002 b_ack!194)))

(check-sat)
(exit)
