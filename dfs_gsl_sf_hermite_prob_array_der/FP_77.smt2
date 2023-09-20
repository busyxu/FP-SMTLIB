(declare-fun b_ack!1160 () (_ BitVec 32))
(declare-fun a_ack!1161 () (_ BitVec 32))
(assert (not (bvslt b_ack!1160 #x00000000)))
(assert (not (bvslt a_ack!1161 #x00000000)))
(assert (not (= #x00000000 a_ack!1161)))
(assert (not (bvslt b_ack!1160 a_ack!1161)))
(assert (not (= b_ack!1160 a_ack!1161)))
(assert (not (= b_ack!1160 (bvadd #x00000001 a_ack!1161))))
(assert (bvult a_ack!1161 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1161)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1161)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!1161))
(assert (not (bvslt #x00000001 a_ack!1161)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1161))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1161))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!1161)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!1161)))
       #x0000000000000319))
(assert (not (bvsle (bvadd #x00000001 a_ack!1161) (bvadd #xffffffff b_ack!1160))))

(check-sat)
(exit)
