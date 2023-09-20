(declare-fun b_ack!418 () (_ BitVec 32))
(declare-fun a_ack!419 () (_ BitVec 32))
(assert (not (bvult a_ack!419 b_ack!418)))
(assert (not (= b_ack!418 a_ack!419)))
(assert (not (= #x00000000 b_ack!418)))
(assert (bvult a_ack!419 (bvmul #x00000002 b_ack!418)))
(assert (bvule a_ack!419 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!419)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!419)))
       #x0000000000001001))
(assert (bvule (bvsub a_ack!419 b_ack!418) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub a_ack!419 b_ack!418))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub a_ack!419 b_ack!418))))))
  (bvult a!1 #x0000000000001001)))
(assert (bvule (bvsub a_ack!419 (bvsub a_ack!419 b_ack!418)) #x000000aa))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvsub a_ack!419 (bvsub a_ack!419 b_ack!418))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!1))))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvsub a_ack!419 (bvsub a_ack!419 b_ack!418))))))
  (bvult (bvadd #x0000000000000008 a!1) #x0000000000001001)))

(check-sat)
(exit)
