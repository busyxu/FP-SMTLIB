(declare-fun b_ack!1092 () (_ BitVec 32))
(declare-fun a_ack!1093 () (_ BitVec 32))
(assert (not (bvslt b_ack!1092 #x00000000)))
(assert (not (bvslt a_ack!1093 #x00000000)))
(assert (not (= #x00000000 a_ack!1093)))
(assert (not (bvslt b_ack!1092 a_ack!1093)))
(assert (not (= b_ack!1092 a_ack!1093)))
(assert (not (= b_ack!1092 (bvadd #x00000001 a_ack!1093))))
(assert (not (bvult a_ack!1093 #x00000012)))
(assert (bvule a_ack!1093 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1093)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1093)))
       #x0000000000001001))
(assert (not (bvslt #x00000000 a_ack!1093)))

(check-sat)
(exit)
