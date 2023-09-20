(declare-fun b_ack!126 () (_ BitVec 32))
(declare-fun a_ack!127 () (_ BitVec 32))
(assert (not (bvslt b_ack!126 #x00000000)))
(assert (not (bvslt a_ack!127 #x00000000)))
(assert (not (= #x00000000 a_ack!127)))
(assert (not (bvslt b_ack!126 a_ack!127)))
(assert (not (= b_ack!126 a_ack!127)))
(assert (not (= b_ack!126 (bvadd #x00000001 a_ack!127))))
(assert (not (bvslt a_ack!127 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!127 #x00000001))))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) a_ack!127) #b1)
        (concat #b1 ((_ extract 31 1) a_ack!127))
        (concat #b0 ((_ extract 31 1) a_ack!127)))))
(assert (bvult a_ack!127 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!127)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!127)))
       #x0000000000001001))

(check-sat)
(exit)
