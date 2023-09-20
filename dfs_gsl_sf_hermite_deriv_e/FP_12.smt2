(declare-fun b_ack!260 () (_ BitVec 32))
(declare-fun a_ack!261 () (_ BitVec 32))
(assert (not (bvslt b_ack!260 #x00000000)))
(assert (not (bvslt a_ack!261 #x00000000)))
(assert (not (bvslt b_ack!260 a_ack!261)))
(assert (not (bvult b_ack!260 a_ack!261)))
(assert (= a_ack!261 b_ack!260))
(assert (bvult a_ack!261 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!261)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!261)))
       #x0000000000001001))
(assert (not (bvslt a_ack!261 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!261 #x00000001))))

(check-sat)
(exit)
