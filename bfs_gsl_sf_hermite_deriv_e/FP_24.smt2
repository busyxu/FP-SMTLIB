(declare-fun b_ack!442 () (_ BitVec 32))
(declare-fun a_ack!444 () (_ BitVec 32))
(declare-fun c_ack!443 () (_ BitVec 64))
(assert (not (bvslt b_ack!442 #x00000000)))
(assert (not (bvslt a_ack!444 #x00000000)))
(assert (not (bvslt b_ack!442 a_ack!444)))
(assert (not (bvult b_ack!442 a_ack!444)))
(assert (not (= a_ack!444 b_ack!442)))
(assert (= #x00000000 a_ack!444))
(assert (bvult a_ack!444 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!444)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!444)))
       #x0000000000001001))
(assert (not (bvslt a_ack!444 #x00000000)))
(assert (= #x00000000 (bvand a_ack!444 #x00000001)))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) a_ack!444) #b1)
        (concat #b1 ((_ extract 31 1) a_ack!444))
        (concat #b0 ((_ extract 31 1) a_ack!444)))))
(assert (not (bvslt (bvsub b_ack!442 a_ack!444) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!442 a_ack!444))))
(assert (not (= #x00000001 (bvsub b_ack!442 a_ack!444))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!443) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
