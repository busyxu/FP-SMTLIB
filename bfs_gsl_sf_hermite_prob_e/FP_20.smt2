(declare-fun a_ack!204 () (_ BitVec 32))
(declare-fun b_ack!203 () (_ BitVec 64))
(assert (not (bvslt a_ack!204 #x00000000)))
(assert (not (= #x00000000 a_ack!204)))
(assert (not (= #x00000001 a_ack!204)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!203) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!204 #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff a_ack!204))))
(assert (bvult (bvadd #xffffffff a_ack!204) #x0000001a))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff a_ack!204))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff a_ack!204))))))
  (bvult a!1 #x0000000000001be9)))
(assert (not (= #x00000000 (bvand (bvsdiv a_ack!204 #x00000002) #x00000001))))

(check-sat)
(exit)
