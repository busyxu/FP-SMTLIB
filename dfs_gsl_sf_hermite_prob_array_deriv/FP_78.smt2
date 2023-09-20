(declare-fun b_ack!1162 () (_ BitVec 32))
(declare-fun a_ack!1163 () (_ BitVec 32))
(assert (not (bvslt b_ack!1162 #x00000000)))
(assert (not (bvslt a_ack!1163 #x00000000)))
(assert (not (= #x00000000 a_ack!1163)))
(assert (not (bvslt b_ack!1162 a_ack!1163)))
(assert (not (= b_ack!1162 a_ack!1163)))
(assert (not (= b_ack!1162 (bvadd #x00000001 a_ack!1163))))
(assert (bvult a_ack!1163 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1163)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1163)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!1163))
(assert (bvslt #x00000001 a_ack!1163))

(check-sat)
(exit)
