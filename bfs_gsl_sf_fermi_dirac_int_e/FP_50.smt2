(declare-fun a_ack!686 () (_ BitVec 32))
(declare-fun b_ack!685 () (_ BitVec 64))
(assert (bvslt a_ack!686 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!686)))
(assert (not (bvslt a_ack!686 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!686))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!685) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub #xffffffff a_ack!686)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub #xffffffff a_ack!686)))
       #x0000000000000321))
(assert (bvsle #x00000001 (bvsub #xfffffffe a_ack!686)))

(check-sat)
(exit)
