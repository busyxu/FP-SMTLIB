(declare-fun a_ack!32 () (_ BitVec 32))
(declare-fun b_ack!31 () (_ BitVec 32))
(assert (bvslt a_ack!32 #x00000000))
(assert (bvsle a_ack!32 b_ack!31))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) (bvsub b_ack!31 a_ack!32)))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) (bvsub b_ack!31 a_ack!32)))
       #x0000000000000319))
(assert (bvsle a_ack!32 (bvadd #xffffffff b_ack!31)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffff (bvsub b_ack!31 a_ack!32))))))
  (bvult a!1 #x0000000000000319)))

(check-sat)
(exit)
