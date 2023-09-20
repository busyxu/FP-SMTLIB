(declare-fun b_ack!1436 () (_ BitVec 32))
(declare-fun a_ack!1438 () (_ BitVec 32))
(declare-fun c_ack!1437 () (_ BitVec 64))
(assert (not (bvslt b_ack!1436 #x00000000)))
(assert (not (bvslt a_ack!1438 #x00000000)))
(assert (not (= #x00000000 b_ack!1436)))
(assert (not (= #x00000001 b_ack!1436)))
(assert (not (= #x00000000 a_ack!1438)))
(assert (not (= #x00000001 a_ack!1438)))
(assert (not (bvslt (bvsub b_ack!1436 a_ack!1438) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1436 a_ack!1438) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1436 a_ack!1438))))
(assert (not (= #x00000001 (bvsub b_ack!1436 a_ack!1438))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1437) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvsub b_ack!1436 a_ack!1438) #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff (bvsub b_ack!1436 a_ack!1438)))))
(assert (bvult (bvadd #xffffffff (bvsub b_ack!1436 a_ack!1438)) #x0000001a))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvsub b_ack!1436 a_ack!1438))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!1))))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvsub b_ack!1436 a_ack!1438))))))
  (bvult (bvadd #x0000000000000008 a!1) #x0000000000001be9)))
(assert (= #x00000000
   (bvand (bvsdiv (bvsub b_ack!1436 a_ack!1438) #x00000002) #x00000001)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!1436 a_ack!1438)) #x00000000)))
(assert (not (= #xffffffff (bvsub b_ack!1436 a_ack!1438))))
(assert (not (= #x00000000 (bvsub b_ack!1436 a_ack!1438))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1437) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000
   (bvand (bvadd #x00000001 (bvsub b_ack!1436 a_ack!1438)) #x00000001)))

(check-sat)
(exit)
