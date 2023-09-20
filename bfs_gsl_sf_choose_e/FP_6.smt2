(declare-fun b_ack!84 () (_ BitVec 32))
(declare-fun a_ack!85 () (_ BitVec 32))
(assert (not (bvult a_ack!85 b_ack!84)))
(assert (not (= b_ack!84 a_ack!85)))
(assert (not (= #x00000000 b_ack!84)))
(assert (bvule a_ack!85 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!85)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!85)))
       #x0000000000001001))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!84)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!84)))
       #x0000000000001001))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub a_ack!85 b_ack!84))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub a_ack!85 b_ack!84))))))
  (bvult a!1 #x0000000000001001)))

(check-sat)
(exit)
