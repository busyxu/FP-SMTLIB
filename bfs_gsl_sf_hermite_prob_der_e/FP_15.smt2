(declare-fun b_ack!239 () (_ BitVec 32))
(declare-fun a_ack!240 () (_ BitVec 32))
(assert (not (bvslt b_ack!239 #x00000000)))
(assert (not (bvslt a_ack!240 #x00000000)))
(assert (not (bvslt b_ack!239 a_ack!240)))
(assert (not (bvult b_ack!239 a_ack!240)))
(assert (not (= a_ack!240 b_ack!239)))
(assert (= #x00000000 a_ack!240))
(assert (bvult a_ack!240 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!240)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!240)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!239 a_ack!240) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!239 a_ack!240))))
(assert (= #x00000001 (bvsub b_ack!239 a_ack!240)))

(check-sat)
(exit)
