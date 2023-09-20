(declare-fun b_ack!969 () (_ BitVec 32))
(declare-fun a_ack!970 () (_ BitVec 32))
(assert (not (bvslt b_ack!969 #x00000000)))
(assert (not (bvslt a_ack!970 #x00000000)))
(assert (not (= #x00000000 a_ack!970)))
(assert (not (bvslt b_ack!969 a_ack!970)))
(assert (not (= b_ack!969 a_ack!970)))
(assert (not (= b_ack!969 (bvadd #x00000001 a_ack!970))))
(assert (bvult a_ack!970 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!970)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!970)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!970))
(assert (not (bvslt #x00000001 a_ack!970)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!970))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!970))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!970)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!970)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000001 a_ack!970) (bvadd #xffffffff b_ack!969)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!970)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!970)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000002 a_ack!970) (bvadd #xffffffff b_ack!969)))

(check-sat)
(exit)
