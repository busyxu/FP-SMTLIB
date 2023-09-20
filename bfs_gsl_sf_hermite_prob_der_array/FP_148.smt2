(declare-fun b_ack!1765 () (_ BitVec 32))
(declare-fun a_ack!1767 () (_ BitVec 32))
(declare-fun c_ack!1766 () (_ BitVec 64))
(assert (not (bvslt b_ack!1765 #x00000000)))
(assert (not (bvslt a_ack!1767 #x00000000)))
(assert (not (= #x00000000 b_ack!1765)))
(assert (not (= #x00000001 b_ack!1765)))
(assert (not (= #x00000000 a_ack!1767)))
(assert (not (= #x00000001 a_ack!1767)))
(assert (not (bvslt (bvsub b_ack!1765 a_ack!1767) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1765 a_ack!1767) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1765 a_ack!1767))))
(assert (not (= #x00000001 (bvsub b_ack!1765 a_ack!1767))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1766) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand (bvsub b_ack!1765 a_ack!1767) #x00000001))))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!1765 a_ack!1767)) #x00000000)))
(assert (not (= #xffffffff (bvsub b_ack!1765 a_ack!1767))))
(assert (not (= #x00000000 (bvsub b_ack!1765 a_ack!1767))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1766) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000
   (bvand (bvadd #x00000001 (bvsub b_ack!1765 a_ack!1767)) #x00000001)))
(assert (not (bvslt #x00000129 (bvsub b_ack!1765 a_ack!1767))))
(assert (not (bvult (bvsub b_ack!1765 a_ack!1767) #x0000001a)))
(assert (bvule (bvsub b_ack!1765 a_ack!1767) #x00000129))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub b_ack!1765 a_ack!1767))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvsub b_ack!1765 a_ack!1767))))))
  (bvult a!1 #x0000000000001be9)))
(assert (let ((a!1 (bvand (bvsdiv (bvadd #x00000001 (bvsub b_ack!1765 a_ack!1767))
                          #x00000002)
                  #x00000001)))
  (= #x00000000 a!1)))
(assert (not (bvsle (bvadd #x00000001 b_ack!1765) a_ack!1767)))
(assert (not (bvslt b_ack!1765 a_ack!1767)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1767))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1767))
       #x0000000000000319))
(assert (not (bvslt b_ack!1765 a_ack!1767)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #xffffffff a_ack!1767)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #xffffffff a_ack!1767)))
       #x0000000000000319))
(assert (bvslt a_ack!1767 b_ack!1765))
(assert (bvslt #x00000000 (bvadd #xffffffff a_ack!1767)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #xfffffffe a_ack!1767)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #xfffffffe a_ack!1767)))
       #x0000000000000319))
(assert (not (bvslt #x00000000 (bvadd #xfffffffe a_ack!1767))))

(check-sat)
(exit)
