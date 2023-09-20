(declare-fun b_ack!2185 () (_ BitVec 32))
(declare-fun a_ack!2186 () (_ BitVec 32))
(assert (not (bvslt b_ack!2185 #x00000000)))
(assert (not (bvslt a_ack!2186 #x00000000)))
(assert (not (bvslt b_ack!2185 a_ack!2186)))
(assert (not (bvult b_ack!2185 a_ack!2186)))
(assert (not (= a_ack!2186 b_ack!2185)))
(assert (= #x00000000 a_ack!2186))
(assert (bvult a_ack!2186 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!2186)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!2186)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!2185 a_ack!2186) #x00000000)))
(assert (= #x00000000 (bvsub b_ack!2185 a_ack!2186)))

(check-sat)
(exit)
