(declare-fun b_ack!329 () (_ BitVec 32))
(declare-fun a_ack!330 () (_ BitVec 32))
(assert (not (bvslt b_ack!329 #x00000000)))
(assert (not (bvslt a_ack!330 #x00000000)))
(assert (not (bvslt b_ack!329 a_ack!330)))
(assert (not (bvult b_ack!329 a_ack!330)))
(assert (not (= a_ack!330 b_ack!329)))
(assert (= #x00000000 a_ack!330))
(assert (bvult a_ack!330 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!330)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!330)))
       #x0000000000001001))
(assert (not (bvslt a_ack!330 #x00000000)))
(assert (= #x00000000 (bvand a_ack!330 #x00000001)))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) a_ack!330) #b1)
        (concat #b1 ((_ extract 31 1) a_ack!330))
        (concat #b0 ((_ extract 31 1) a_ack!330)))))
(assert (not (bvslt (bvsub b_ack!329 a_ack!330) #x00000000)))
(assert (= #x00000000 (bvsub b_ack!329 a_ack!330)))

(check-sat)
(exit)
