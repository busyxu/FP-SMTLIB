(declare-fun b_ack!2183 () (_ BitVec 32))
(declare-fun a_ack!2184 () (_ BitVec 32))
(assert (not (bvslt b_ack!2183 #x00000000)))
(assert (not (bvslt a_ack!2184 #x00000000)))
(assert (not (bvslt b_ack!2183 a_ack!2184)))
(assert (not (bvult b_ack!2183 a_ack!2184)))
(assert (not (= a_ack!2184 b_ack!2183)))
(assert (= #x00000000 a_ack!2184))
(assert (bvult a_ack!2184 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!2184)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!2184)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!2183 a_ack!2184) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!2183 a_ack!2184))))
(assert (= #x00000001 (bvsub b_ack!2183 a_ack!2184)))

(check-sat)
(exit)
