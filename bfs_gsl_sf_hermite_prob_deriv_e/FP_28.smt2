(declare-fun b_ack!554 () (_ BitVec 32))
(declare-fun a_ack!555 () (_ BitVec 32))
(assert (not (bvslt b_ack!554 #x00000000)))
(assert (not (bvslt a_ack!555 #x00000000)))
(assert (not (bvslt b_ack!554 a_ack!555)))
(assert (not (bvult b_ack!554 a_ack!555)))
(assert (not (= a_ack!555 b_ack!554)))
(assert (not (= #x00000000 a_ack!555)))
(assert (not (bvule b_ack!554 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!555) b_ack!554))
(assert (not (bvult (bvsub b_ack!554 (bvsub b_ack!554 a_ack!555)) #x00000040)))

(check-sat)
(exit)
