(declare-fun b_ack!1283 () (_ BitVec 32))
(declare-fun a_ack!1284 () (_ BitVec 32))
(assert (not (bvslt b_ack!1283 #x00000000)))
(assert (not (bvslt a_ack!1284 #x00000000)))
(assert (not (= #x00000000 a_ack!1284)))
(assert (not (bvslt b_ack!1283 a_ack!1284)))
(assert (not (= b_ack!1283 a_ack!1284)))
(assert (not (= b_ack!1283 (bvadd #x00000001 a_ack!1284))))
(assert (bvult a_ack!1284 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1284)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1284)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!1284))
(assert (not (bvslt #x00000001 a_ack!1284)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1284))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1284))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!1284)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!1284)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000001 a_ack!1284) (bvadd #xffffffff b_ack!1283)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!1284)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!1284)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000002 a_ack!1284) (bvadd #xffffffff b_ack!1283)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000003 a_ack!1284)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000003 a_ack!1284)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000003 a_ack!1284) (bvadd #xffffffff b_ack!1283)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000004 a_ack!1284)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000004 a_ack!1284)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000004 a_ack!1284) (bvadd #xffffffff b_ack!1283)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000005 a_ack!1284)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000005 a_ack!1284)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000005 a_ack!1284) (bvadd #xffffffff b_ack!1283)))

(check-sat)
(exit)
