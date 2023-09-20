(declare-fun b_ack!940 () (_ BitVec 32))
(declare-fun a_ack!941 () (_ BitVec 32))
(assert (not (bvslt b_ack!940 #x00000000)))
(assert (not (bvslt a_ack!941 #x00000000)))
(assert (not (bvslt b_ack!940 a_ack!941)))
(assert (not (bvult b_ack!940 a_ack!941)))
(assert (not (= a_ack!941 b_ack!940)))
(assert (not (= #x00000000 a_ack!941)))
(assert (bvule b_ack!940 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!940)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!940)))
       #x0000000000001001))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!941)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!941)))
       #x0000000000001001))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub b_ack!940 a_ack!941))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub b_ack!940 a_ack!941))))))
  (bvult a!1 #x0000000000001001)))
(assert (bvult a_ack!941 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!941)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!941)))
       #x0000000000001001))

(check-sat)
(exit)
