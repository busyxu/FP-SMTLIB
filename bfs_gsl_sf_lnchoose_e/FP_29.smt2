(declare-fun b_ack!444 () (_ BitVec 32))
(declare-fun a_ack!445 () (_ BitVec 32))
(assert (not (bvult a_ack!445 b_ack!444)))
(assert (not (= b_ack!444 a_ack!445)))
(assert (not (= #x00000000 b_ack!444)))
(assert (bvult a_ack!445 (bvmul #x00000002 b_ack!444)))
(assert (bvule a_ack!445 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!445)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!445)))
       #x0000000000001001))
(assert (bvule (bvsub a_ack!445 b_ack!444) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub a_ack!445 b_ack!444))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub a_ack!445 b_ack!444))))))
  (bvult a!1 #x0000000000001001)))
(assert (not (bvule (bvsub a_ack!445 (bvsub a_ack!445 b_ack!444)) #x000000aa)))

(check-sat)
(exit)
