(declare-fun b_ack!302 () (_ BitVec 32))
(declare-fun a_ack!303 () (_ BitVec 32))
(assert (not (bvult a_ack!303 b_ack!302)))
(assert (not (= b_ack!302 a_ack!303)))
(assert (not (= #x00000000 b_ack!302)))
(assert (not (bvult a_ack!303 (bvmul #x00000002 b_ack!302))))
(assert (bvule a_ack!303 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!303)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!303)))
       #x0000000000001001))
(assert (not (bvule b_ack!302 #x000000aa)))

(check-sat)
(exit)
