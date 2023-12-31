(declare-fun b_ack!2205 () (_ BitVec 32))
(declare-fun a_ack!2206 () (_ BitVec 32))
(assert (not (bvslt b_ack!2205 #x00000000)))
(assert (not (bvslt a_ack!2206 #x00000000)))
(assert (not (bvslt b_ack!2205 a_ack!2206)))
(assert (not (bvult b_ack!2205 a_ack!2206)))
(assert (not (= a_ack!2206 b_ack!2205)))
(assert (not (= #x00000000 a_ack!2206)))
(assert (not (bvule b_ack!2205 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!2206) b_ack!2205))
(assert (bvult (bvsub b_ack!2205 (bvsub b_ack!2205 a_ack!2206)) #x00000040))
(assert (not (bvule (bvadd #x00000001 (bvsub b_ack!2205 a_ack!2206)) b_ack!2205)))

(check-sat)
(exit)
