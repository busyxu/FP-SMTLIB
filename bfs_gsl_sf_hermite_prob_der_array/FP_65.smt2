(declare-fun b_ack!649 () (_ BitVec 32))
(declare-fun a_ack!651 () (_ BitVec 32))
(declare-fun c_ack!650 () (_ BitVec 64))
(assert (not (bvslt b_ack!649 #x00000000)))
(assert (not (bvslt a_ack!651 #x00000000)))
(assert (not (= #x00000000 b_ack!649)))
(assert (not (= #x00000001 b_ack!649)))
(assert (not (= #x00000000 a_ack!651)))
(assert (= #x00000001 a_ack!651))
(assert (not (bvslt b_ack!649 #x00000000)))
(assert (not (= #x00000000 b_ack!649)))
(assert (not (= #x00000001 b_ack!649)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!650) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand b_ack!649 #x00000001))))
(assert (not (bvslt (bvadd #xffffffff b_ack!649) #x00000000)))
(assert (not (= #x00000001 b_ack!649)))
(assert (not (= #x00000002 b_ack!649)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!650) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvadd #xffffffff b_ack!649) #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xfffffffe b_ack!649))))
(assert (bvult (bvadd #xfffffffe b_ack!649) #x0000001a))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xfffffffe b_ack!649))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xfffffffe b_ack!649))))))
  (bvult a!1 #x0000000000001be9)))
(assert (= #x00000000
   (bvand (bvsdiv (bvadd #xffffffff b_ack!649) #x00000002) #x00000001)))

(check-sat)
(exit)
