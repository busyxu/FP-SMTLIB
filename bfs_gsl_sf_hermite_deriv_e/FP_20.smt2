(declare-fun b_ack!371 () (_ BitVec 32))
(declare-fun a_ack!372 () (_ BitVec 32))
(assert (not (bvslt b_ack!371 #x00000000)))
(assert (not (bvslt a_ack!372 #x00000000)))
(assert (not (bvslt b_ack!371 a_ack!372)))
(assert (not (bvult b_ack!371 a_ack!372)))
(assert (not (= a_ack!372 b_ack!371)))
(assert (= #x00000000 a_ack!372))
(assert (bvult a_ack!372 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!372)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!372)))
       #x0000000000001001))
(assert (not (bvslt a_ack!372 #x00000000)))
(assert (= #x00000000 (bvand a_ack!372 #x00000001)))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) a_ack!372) #b1)
        (concat #b1 ((_ extract 31 1) a_ack!372))
        (concat #b0 ((_ extract 31 1) a_ack!372)))))
(assert (not (bvslt (bvsub b_ack!371 a_ack!372) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!371 a_ack!372))))
(assert (= #x00000001 (bvsub b_ack!371 a_ack!372)))

(check-sat)
(exit)
