(declare-fun b_ack!414 () (_ BitVec 32))
(declare-fun a_ack!415 () (_ BitVec 32))
(assert (not (bvslt b_ack!414 #x00000000)))
(assert (not (bvslt a_ack!415 #x00000000)))
(assert (not (bvslt b_ack!414 a_ack!415)))
(assert (not (bvult b_ack!414 a_ack!415)))
(assert (= a_ack!415 b_ack!414))
(assert (not (bvult a_ack!415 #x00000012)))
(assert (bvule a_ack!415 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!415)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!415)))
       #x0000000000001001))
(assert (bvslt (bvsub b_ack!414 a_ack!415) #x00000000))

(check-sat)
(exit)
