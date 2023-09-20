(declare-fun b_ack!130 () (_ BitVec 32))
(declare-fun a_ack!131 () (_ BitVec 32))
(assert (not (bvslt b_ack!130 #x00000000)))
(assert (not (bvslt a_ack!131 #x00000000)))
(assert (not (bvslt b_ack!130 a_ack!131)))
(assert (not (bvult b_ack!130 a_ack!131)))
(assert (= a_ack!131 b_ack!130))
(assert (not (bvult a_ack!131 #x00000012)))
(assert (bvule a_ack!131 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!131)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!131)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!130 a_ack!131) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!130 a_ack!131))))

(check-sat)
(exit)
