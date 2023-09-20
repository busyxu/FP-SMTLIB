(declare-fun b_ack!442 () (_ BitVec 32))
(declare-fun a_ack!443 () (_ BitVec 32))
(assert (not (bvult a_ack!443 b_ack!442)))
(assert (not (= b_ack!442 a_ack!443)))
(assert (not (= #x00000000 b_ack!442)))
(assert (bvult a_ack!443 (bvmul #x00000002 b_ack!442)))
(assert (bvule a_ack!443 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!443)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!443)))
       #x0000000000001001))
(assert (not (bvule (bvsub a_ack!443 b_ack!442) #x000000aa)))

(check-sat)
(exit)
