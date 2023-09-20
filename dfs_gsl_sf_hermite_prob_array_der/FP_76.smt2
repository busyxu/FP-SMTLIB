(declare-fun b_ack!1140 () (_ BitVec 32))
(declare-fun a_ack!1141 () (_ BitVec 32))
(assert (not (bvslt b_ack!1140 #x00000000)))
(assert (not (bvslt a_ack!1141 #x00000000)))
(assert (not (= #x00000000 a_ack!1141)))
(assert (not (bvslt b_ack!1140 a_ack!1141)))
(assert (not (= b_ack!1140 a_ack!1141)))
(assert (not (= b_ack!1140 (bvadd #x00000001 a_ack!1141))))
(assert (bvult a_ack!1141 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1141)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1141)))
       #x0000000000001001))

(check-sat)
(exit)
