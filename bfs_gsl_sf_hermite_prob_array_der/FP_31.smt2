(declare-fun b_ack!381 () (_ BitVec 32))
(declare-fun a_ack!382 () (_ BitVec 32))
(assert (not (bvslt b_ack!381 #x00000000)))
(assert (not (bvslt a_ack!382 #x00000000)))
(assert (not (= #x00000000 a_ack!382)))
(assert (not (bvslt b_ack!381 a_ack!382)))
(assert (not (= b_ack!381 a_ack!382)))
(assert (not (= b_ack!381 (bvadd #x00000001 a_ack!382))))
(assert (bvult a_ack!382 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!382)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!382)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!382))
(assert (bvslt #x00000001 a_ack!382))

(check-sat)
(exit)
