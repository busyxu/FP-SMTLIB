(declare-fun b_ack!56 () (_ BitVec 32))
(declare-fun a_ack!57 () (_ BitVec 32))
(assert (not (bvslt b_ack!56 #x00000000)))
(assert (not (bvslt a_ack!57 #x00000000)))
(assert (not (bvslt b_ack!56 a_ack!57)))
(assert (not (bvult b_ack!56 a_ack!57)))
(assert (= a_ack!57 b_ack!56))
(assert (bvult a_ack!57 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!57)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!57)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!56 a_ack!57) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!56 a_ack!57))))

(check-sat)
(exit)
