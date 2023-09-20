(declare-fun a_ack!1847 () (_ BitVec 32))
(declare-fun b_ack!1845 () (_ BitVec 32))
(declare-fun c_ack!1846 () (_ BitVec 64))
(assert (not (bvslt a_ack!1847 #x00000000)))
(assert (not (bvslt b_ack!1845 a_ack!1847)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1846) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1847 #x00000000)))
(assert (not (= #x00000000 a_ack!1847)))
(assert (not (= #x00000001 a_ack!1847)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1846) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1846) ((_ to_fp 11 53) #x4014000000000000)))
(assert (bvule (bvadd #xffffffff a_ack!1847) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff a_ack!1847))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff a_ack!1847))))))
  (bvult a!1 #x0000000000001001)))

(check-sat)
(exit)
