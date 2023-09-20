(declare-fun a_ack!1528 () (_ BitVec 32))
(declare-fun b_ack!1526 () (_ BitVec 32))
(declare-fun c_ack!1527 () (_ BitVec 64))
(assert (not (bvslt a_ack!1528 #x00000000)))
(assert (not (bvslt b_ack!1526 a_ack!1528)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1527) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1528 #x00000000)))
(assert (not (= #x00000000 a_ack!1528)))
(assert (not (= #x00000001 a_ack!1528)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1527) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1527) ((_ to_fp 11 53) #x4014000000000000)))
(assert (bvule (bvadd #xffffffff a_ack!1528) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff a_ack!1528))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff a_ack!1528))))))
  (bvult a!1 #x0000000000001001)))

(check-sat)
(exit)
