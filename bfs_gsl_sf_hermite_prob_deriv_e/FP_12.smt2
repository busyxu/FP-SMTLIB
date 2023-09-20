(declare-fun b_ack!171 () (_ BitVec 32))
(declare-fun a_ack!172 () (_ BitVec 32))
(assert (not (bvslt b_ack!171 #x00000000)))
(assert (not (bvslt a_ack!172 #x00000000)))
(assert (not (bvslt b_ack!171 a_ack!172)))
(assert (not (bvult b_ack!171 a_ack!172)))
(assert (not (= a_ack!172 b_ack!171)))
(assert (= #x00000000 a_ack!172))
(assert (bvult a_ack!172 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!172)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!172)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!171 a_ack!172) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!171 a_ack!172))))
(assert (= #x00000001 (bvsub b_ack!171 a_ack!172)))

(check-sat)
(exit)
