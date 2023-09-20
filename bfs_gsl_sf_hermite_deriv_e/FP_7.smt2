(declare-fun b_ack!185 () (_ BitVec 32))
(declare-fun a_ack!186 () (_ BitVec 32))
(assert (not (bvslt b_ack!185 #x00000000)))
(assert (not (bvslt a_ack!186 #x00000000)))
(assert (not (bvslt b_ack!185 a_ack!186)))
(assert (not (bvult b_ack!185 a_ack!186)))
(assert (= a_ack!186 b_ack!185))
(assert (bvult a_ack!186 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!186)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!186)))
       #x0000000000001001))
(assert (not (bvslt a_ack!186 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!186 #x00000001))))

(check-sat)
(exit)
