(declare-fun b_ack!1057 () (_ BitVec 32))
(declare-fun a_ack!1059 () (_ BitVec 32))
(declare-fun c_ack!1058 () (_ BitVec 64))
(assert (not (bvslt b_ack!1057 #x00000000)))
(assert (not (bvslt a_ack!1059 #x00000000)))
(assert (not (= #x00000000 b_ack!1057)))
(assert (not (= #x00000001 b_ack!1057)))
(assert (not (= #x00000000 a_ack!1059)))
(assert (not (= #x00000001 a_ack!1059)))
(assert (not (bvslt (bvsub b_ack!1057 a_ack!1059) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1057 a_ack!1059) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1057 a_ack!1059))))
(assert (not (= #x00000001 (bvsub b_ack!1057 a_ack!1059))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1058) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvsub b_ack!1057 a_ack!1059) #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff (bvsub b_ack!1057 a_ack!1059)))))
(assert (bvult (bvadd #xffffffff (bvsub b_ack!1057 a_ack!1059)) #x0000001a))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvsub b_ack!1057 a_ack!1059))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!1))))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvsub b_ack!1057 a_ack!1059))))))
  (bvult (bvadd #x0000000000000008 a!1) #x0000000000001be9)))
(assert (= #x00000000
   (bvand (bvsdiv (bvsub b_ack!1057 a_ack!1059) #x00000002) #x00000001)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!1057 a_ack!1059)) #x00000000)))
(assert (not (= #xffffffff (bvsub b_ack!1057 a_ack!1059))))
(assert (not (= #x00000000 (bvsub b_ack!1057 a_ack!1059))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1058) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
