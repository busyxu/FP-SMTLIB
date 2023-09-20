(declare-fun b_ack!62 () (_ BitVec 32))
(declare-fun a_ack!63 () (_ BitVec 32))
(assert (not (bvult a_ack!63 b_ack!62)))
(assert (not (= b_ack!62 a_ack!63)))
(assert (not (= #x00000000 b_ack!62)))
(assert (bvule a_ack!63 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!63)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!63)))
       #x0000000000001001))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!62)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!62)))
       #x0000000000001001))

(check-sat)
(exit)
