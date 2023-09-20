(declare-fun b_ack!978 () (_ BitVec 32))
(declare-fun a_ack!979 () (_ BitVec 32))
(assert (not (bvslt b_ack!978 #x00000000)))
(assert (not (bvslt a_ack!979 #x00000000)))
(assert (not (bvslt b_ack!978 a_ack!979)))
(assert (not (bvult b_ack!978 a_ack!979)))
(assert (not (= a_ack!979 b_ack!978)))
(assert (not (= #x00000000 a_ack!979)))
(assert (bvule b_ack!978 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!978)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!978)))
       #x0000000000001001))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!979)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!979)))
       #x0000000000001001))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub b_ack!978 a_ack!979))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub b_ack!978 a_ack!979))))))
  (bvult a!1 #x0000000000001001)))
(assert (not (bvult a_ack!979 #x00000012)))

(check-sat)
(exit)
