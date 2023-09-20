(declare-fun b_ack!1789 () (_ BitVec 32))
(declare-fun a_ack!1790 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1789 #x00000000)))
(assert (not (bvslt a_ack!1790 #x00000000)))
(assert (not (= #x00000000 a_ack!1790)))
(assert (not (bvslt b_ack!1789 a_ack!1790)))
(assert (not (= b_ack!1789 a_ack!1790)))
(assert (not (= b_ack!1789 (bvadd #x00000001 a_ack!1790))))
(assert (bvult a_ack!1790 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1790)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1790)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!1790))
(assert (not (bvslt #x00000001 a_ack!1790)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1790))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!1790))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000001 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000002 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000003 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000003 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000003 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000004 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000004 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000004 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000005 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000005 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000005 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000006 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000006 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000006 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000007 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000007 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000007 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000008 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000008 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000008 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000009 a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000009 a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000009 a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000a a_ack!1790)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000a a_ack!1790)))
       #x0000000000000319))
(assert (bvsle (bvadd #x0000000a a_ack!1790) (bvadd #xffffffff b_ack!1789)))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x0000000a a_ack!1790))
  #x3ff0000000000000))

(check-sat)
(exit)
