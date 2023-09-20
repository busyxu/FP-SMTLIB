(declare-fun b_ack!183 () (_ BitVec 32))
(declare-fun a_ack!184 () (_ BitVec 32))
(assert (not (bvslt b_ack!183 #x00000000)))
(assert (not (bvslt a_ack!184 #x00000000)))
(assert (not (bvslt b_ack!183 a_ack!184)))
(assert (not (bvult b_ack!183 a_ack!184)))
(assert (= a_ack!184 b_ack!183))
(assert (bvult a_ack!184 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!184)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!184)))
       #x0000000000001001))
(assert (bvslt a_ack!184 #x00000000))

(check-sat)
(exit)
