(declare-fun b_ack!458 () (_ BitVec 32))
(declare-fun a_ack!459 () (_ BitVec 32))
(assert (not (bvslt b_ack!458 #x00000000)))
(assert (not (bvslt a_ack!459 #x00000000)))
(assert (not (= #x00000000 a_ack!459)))
(assert (not (bvslt b_ack!458 a_ack!459)))
(assert (not (= b_ack!458 a_ack!459)))
(assert (not (= b_ack!458 (bvadd #x00000001 a_ack!459))))
(assert (not (bvslt a_ack!459 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!459 #x00000001))))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) a_ack!459) #b1)
        (concat #b1 ((_ extract 31 1) a_ack!459))
        (concat #b0 ((_ extract 31 1) a_ack!459)))))
(assert (bvult a_ack!459 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!459)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!459)))
       #x0000000000001001))
(assert (not (bvslt #x00000000 a_ack!459)))

(check-sat)
(exit)
