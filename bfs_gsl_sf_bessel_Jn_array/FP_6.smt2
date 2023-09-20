(declare-fun a_ack!30 () (_ BitVec 32))
(declare-fun b_ack!29 () (_ BitVec 32))
(assert (bvslt a_ack!30 #x00000000))
(assert (bvsle a_ack!30 b_ack!29))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) (bvsub b_ack!29 a_ack!30)))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) (bvsub b_ack!29 a_ack!30)))
       #x0000000000000319))
(assert (not (bvsle a_ack!30 (bvadd #xffffffff b_ack!29))))

(check-sat)
(exit)
