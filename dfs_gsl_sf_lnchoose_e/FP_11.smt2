(declare-fun b_ack!190 () (_ BitVec 32))
(declare-fun a_ack!191 () (_ BitVec 32))
(assert (not (bvult a_ack!191 b_ack!190)))
(assert (not (= b_ack!190 a_ack!191)))
(assert (not (= #x00000000 b_ack!190)))
(assert (not (bvult a_ack!191 (bvmul #x00000002 b_ack!190))))
(assert (bvule a_ack!191 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!191)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!191)))
       #x0000000000001001))
(assert (bvule b_ack!190 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!190)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!190)))
       #x0000000000001001))
(assert (not (bvule (bvsub a_ack!191 b_ack!190) #x000000aa)))

(check-sat)
(exit)
