(declare-fun b_ack!436 () (_ BitVec 32))
(declare-fun a_ack!437 () (_ BitVec 32))
(assert (not (bvult a_ack!437 b_ack!436)))
(assert (not (= b_ack!436 a_ack!437)))
(assert (not (= #x00000000 b_ack!436)))
(assert (bvult a_ack!437 (bvmul #x00000002 b_ack!436)))
(assert (bvule a_ack!437 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!437)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!437)))
       #x0000000000001001))
(assert (bvule (bvsub a_ack!437 b_ack!436) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub a_ack!437 b_ack!436))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub a_ack!437 b_ack!436))))))
  (bvult a!1 #x0000000000001001)))
(assert (bvule (bvsub a_ack!437 (bvsub a_ack!437 b_ack!436)) #x000000aa))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvsub a_ack!437 (bvsub a_ack!437 b_ack!436))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!1))))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvsub a_ack!437 (bvsub a_ack!437 b_ack!436))))))
  (bvult (bvadd #x0000000000000008 a!1) #x0000000000001001)))

(check-sat)
(exit)
