(declare-fun b_ack!564 () (_ BitVec 32))
(declare-fun a_ack!566 () (_ BitVec 32))
(declare-fun c_ack!565 () (_ BitVec 64))
(assert (not (bvslt b_ack!564 #x00000000)))
(assert (not (bvslt a_ack!566 #x00000000)))
(assert (not (bvslt b_ack!564 a_ack!566)))
(assert (not (bvult b_ack!564 a_ack!566)))
(assert (not (= a_ack!566 b_ack!564)))
(assert (= #x00000000 a_ack!566))
(assert (bvult a_ack!566 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!566)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!566)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!564 a_ack!566) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!564 a_ack!566))))
(assert (not (= #x00000001 (bvsub b_ack!564 a_ack!566))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
