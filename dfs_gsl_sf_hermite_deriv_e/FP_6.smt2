(declare-fun b_ack!136 () (_ BitVec 32))
(declare-fun a_ack!137 () (_ BitVec 32))
(assert (not (bvslt b_ack!136 #x00000000)))
(assert (not (bvslt a_ack!137 #x00000000)))
(assert (not (bvslt b_ack!136 a_ack!137)))
(assert (not (bvult b_ack!136 a_ack!137)))
(assert (= a_ack!137 b_ack!136))
(assert (bvult a_ack!137 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!137)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!137)))
       #x0000000000001001))
(assert (not (bvslt a_ack!137 #x00000000)))
(assert (= #x00000000 (bvand a_ack!137 #x00000001)))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) a_ack!137) #b1)
                   (concat #b1 ((_ extract 31 1) a_ack!137))
                   (concat #b0 ((_ extract 31 1) a_ack!137))))))
  (not a!1)))
(assert (let ((a!1 (bvand (ite (= ((_ extract 31 31) a_ack!137) #b1)
                       (concat #b1 ((_ extract 31 1) a_ack!137))
                       (concat #b0 ((_ extract 31 1) a_ack!137)))
                  #x00000001)))
  (not (= #x00000000 a!1))))

(check-sat)
(exit)
