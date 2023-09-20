(declare-fun b_ack!304 () (_ BitVec 32))
(declare-fun a_ack!305 () (_ BitVec 32))
(assert (not (bvult a_ack!305 b_ack!304)))
(assert (not (= b_ack!304 a_ack!305)))
(assert (not (= #x00000000 b_ack!304)))
(assert (not (bvult a_ack!305 (bvmul #x00000002 b_ack!304))))
(assert (bvule a_ack!305 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!305)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!305)))
       #x0000000000001001))
(assert (bvule b_ack!304 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!304)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!304)))
       #x0000000000001001))
(assert (not (bvule (bvsub a_ack!305 b_ack!304) #x000000aa)))

(check-sat)
(exit)
