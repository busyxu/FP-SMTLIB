(declare-fun b_ack!1088 () (_ BitVec 32))
(declare-fun a_ack!1089 () (_ BitVec 32))
(assert (not (bvslt b_ack!1088 #x00000000)))
(assert (not (bvslt a_ack!1089 #x00000000)))
(assert (not (= #x00000000 a_ack!1089)))
(assert (not (bvslt b_ack!1088 a_ack!1089)))
(assert (not (= b_ack!1088 a_ack!1089)))
(assert (not (= b_ack!1088 (bvadd #x00000001 a_ack!1089))))
(assert (not (bvult a_ack!1089 #x00000012)))
(assert (bvule a_ack!1089 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1089)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1089)))
       #x0000000000001001))

(check-sat)
(exit)
