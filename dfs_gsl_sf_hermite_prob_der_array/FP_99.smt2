(declare-fun b_ack!1544 () (_ BitVec 32))
(declare-fun a_ack!1546 () (_ BitVec 32))
(declare-fun c_ack!1545 () (_ BitVec 64))
(assert (not (bvslt b_ack!1544 #x00000000)))
(assert (not (bvslt a_ack!1546 #x00000000)))
(assert (not (= #x00000000 b_ack!1544)))
(assert (not (= #x00000001 b_ack!1544)))
(assert (not (= #x00000000 a_ack!1546)))
(assert (not (= #x00000001 a_ack!1546)))
(assert (not (bvslt (bvsub b_ack!1544 a_ack!1546) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1544 a_ack!1546) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1544 a_ack!1546))))
(assert (not (= #x00000001 (bvsub b_ack!1544 a_ack!1546))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1545) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvsub b_ack!1544 a_ack!1546) #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff (bvsub b_ack!1544 a_ack!1546)))))
(assert (not (bvult (bvadd #xffffffff (bvsub b_ack!1544 a_ack!1546)) #x0000001a)))
(assert (bvule (bvadd #xffffffff (bvsub b_ack!1544 a_ack!1546)) #x00000129))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvsub b_ack!1544 a_ack!1546))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!1))))
(assert (let ((a!1 (bvmul #x0000000000000018
                  (concat #x00000000
                          (bvadd #xffffffff (bvsub b_ack!1544 a_ack!1546))))))
  (bvult (bvadd #x0000000000000008 a!1) #x0000000000001be9)))
(assert (= #x00000000
   (bvand (bvsdiv (bvsub b_ack!1544 a_ack!1546) #x00000002) #x00000001)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!1544 a_ack!1546)) #x00000000)))
(assert (not (= #xffffffff (bvsub b_ack!1544 a_ack!1546))))
(assert (not (= #x00000000 (bvsub b_ack!1544 a_ack!1546))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1545) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (= #x00000000
              (bvand (bvadd #x00000001 (bvsub b_ack!1544 a_ack!1546))
                     #x00000001))))
  (not a!1)))
(assert (not (bvsle (bvadd #x00000001 b_ack!1544) a_ack!1546)))
(assert (not (bvslt b_ack!1544 a_ack!1546)))
(assert (bvult #x0000000000000000
       (bvadd #xfffffffffffffc80
              (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1546)))))
(assert (bvult (bvadd #xfffffffffffffc80
              (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1546)))
       #x0000000000000321))
(assert (not (bvslt b_ack!1544 a_ack!1546)))
(assert (let ((a!1 (bvadd #xfffffffffffffc80
                  (bvmul #x0000000000000008
                         ((_ sign_extend 32) (bvadd #xffffffff a_ack!1546))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #xfffffffffffffc80
                  (bvmul #x0000000000000008
                         ((_ sign_extend 32) (bvadd #xffffffff a_ack!1546))))))
  (bvult a!1 #x0000000000000321)))
(assert (bvslt a_ack!1546 b_ack!1544))
(assert (not (bvslt #x00000000 (bvadd #xffffffff a_ack!1546))))

(check-sat)
(exit)
