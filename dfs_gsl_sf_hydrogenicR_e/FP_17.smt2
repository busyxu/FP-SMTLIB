(declare-fun a_ack!471 () (_ BitVec 32))
(declare-fun b_ack!468 () (_ BitVec 32))
(declare-fun c_ack!469 () (_ BitVec 64))
(declare-fun d_ack!470 () (_ BitVec 64))
(assert (not (bvslt a_ack!471 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!471) b_ack!468)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!469) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvule (bvadd a_ack!471 b_ack!468) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!471 b_ack!468))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!471 b_ack!468))))))
  (bvult a!1 #x0000000000001001)))
(assert (bvule (bvadd #xffffffff (bvsub a_ack!471 b_ack!468)) #x000000aa))

(check-sat)
(exit)
