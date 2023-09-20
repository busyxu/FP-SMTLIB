(declare-fun b_ack!399 () (_ BitVec 32))
(declare-fun a_ack!400 () (_ BitVec 32))
(assert (not (bvslt b_ack!399 #x00000000)))
(assert (not (bvslt a_ack!400 #x00000000)))
(assert (not (bvslt b_ack!399 a_ack!400)))
(assert (not (bvult b_ack!399 a_ack!400)))
(assert (not (= a_ack!400 b_ack!399)))
(assert (= #x00000000 a_ack!400))
(assert (bvult a_ack!400 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!400)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!400)))
       #x0000000000001001))
(assert (not (bvslt a_ack!400 #x00000000)))
(assert (= #x00000000 (bvand a_ack!400 #x00000001)))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) a_ack!400) #b1)
        (concat #b1 ((_ extract 31 1) a_ack!400))
        (concat #b0 ((_ extract 31 1) a_ack!400)))))
(assert (not (bvslt (bvsub b_ack!399 a_ack!400) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!399 a_ack!400))))
(assert (= #x00000001 (bvsub b_ack!399 a_ack!400)))

(check-sat)
(exit)
