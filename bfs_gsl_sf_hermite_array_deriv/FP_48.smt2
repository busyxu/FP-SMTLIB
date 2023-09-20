(declare-fun b_ack!922 () (_ BitVec 32))
(declare-fun a_ack!923 () (_ BitVec 32))
(assert (not (bvslt b_ack!922 #x00000000)))
(assert (not (bvslt a_ack!923 #x00000000)))
(assert (not (= #x00000000 a_ack!923)))
(assert (not (bvslt b_ack!922 a_ack!923)))
(assert (not (= b_ack!922 a_ack!923)))
(assert (not (= b_ack!922 (bvadd #x00000001 a_ack!923))))
(assert (not (bvslt a_ack!923 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!923 #x00000001))))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) a_ack!923) #b1)
        (concat #b1 ((_ extract 31 1) a_ack!923))
        (concat #b0 ((_ extract 31 1) a_ack!923)))))
(assert (bvult a_ack!923 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!923)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!923)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!923))
(assert (not (bvslt #x00000001 a_ack!923)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!923))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!923))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!923)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!923)))
       #x0000000000000319))
(assert (bvslt (bvadd #x00000001 a_ack!923) b_ack!922))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!923)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!923)))
       #x0000000000000319))
(assert (bvslt (bvadd #x00000002 a_ack!923) b_ack!922))

(check-sat)
(exit)
