(declare-fun b_ack!323 () (_ BitVec 32))
(declare-fun a_ack!324 () (_ BitVec 32))
(assert (not (bvslt b_ack!323 #x00000000)))
(assert (not (bvslt a_ack!324 #x00000000)))
(assert (not (bvslt b_ack!323 a_ack!324)))
(assert (not (bvult b_ack!323 a_ack!324)))
(assert (not (= a_ack!324 b_ack!323)))
(assert (= #x00000000 a_ack!324))
(assert (bvult a_ack!324 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!324)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!324)))
       #x0000000000001001))
(assert (not (bvslt a_ack!324 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!324 #x00000001))))

(check-sat)
(exit)
