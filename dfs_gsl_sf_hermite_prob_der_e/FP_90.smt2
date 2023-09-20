(declare-fun b_ack!2187 () (_ BitVec 32))
(declare-fun a_ack!2188 () (_ BitVec 32))
(assert (not (bvslt b_ack!2187 #x00000000)))
(assert (not (bvslt a_ack!2188 #x00000000)))
(assert (not (bvslt b_ack!2187 a_ack!2188)))
(assert (not (bvult b_ack!2187 a_ack!2188)))
(assert (not (= a_ack!2188 b_ack!2187)))
(assert (= #x00000000 a_ack!2188))
(assert (bvult a_ack!2188 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!2188)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!2188)))
       #x0000000000001001))
(assert (bvslt (bvsub b_ack!2187 a_ack!2188) #x00000000))

(check-sat)
(exit)
