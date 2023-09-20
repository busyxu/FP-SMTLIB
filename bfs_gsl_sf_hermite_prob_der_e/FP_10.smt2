(declare-fun b_ack!167 () (_ BitVec 32))
(declare-fun a_ack!168 () (_ BitVec 32))
(assert (not (bvslt b_ack!167 #x00000000)))
(assert (not (bvslt a_ack!168 #x00000000)))
(assert (not (bvslt b_ack!167 a_ack!168)))
(assert (not (bvult b_ack!167 a_ack!168)))
(assert (not (= a_ack!168 b_ack!167)))
(assert (= #x00000000 a_ack!168))
(assert (bvult a_ack!168 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!168)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!168)))
       #x0000000000001001))
(assert (bvslt (bvsub b_ack!167 a_ack!168) #x00000000))

(check-sat)
(exit)
