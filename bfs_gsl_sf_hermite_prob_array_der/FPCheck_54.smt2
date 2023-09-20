(declare-fun b_ack!321 () (_ BitVec 32))
(declare-fun a_ack!322 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!321 #x00000000)))
(assert (not (bvslt a_ack!322 #x00000000)))
(assert (not (= #x00000000 a_ack!322)))
(assert (not (bvslt b_ack!321 a_ack!322)))
(assert (not (= b_ack!321 a_ack!322)))
(assert (not (= b_ack!321 (bvadd #x00000001 a_ack!322))))
(assert (bvult a_ack!322 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!322)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!322)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!322))
(assert (not (bvslt #x00000001 a_ack!322)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!322))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!322))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!322)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!322)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000001 a_ack!322) (bvadd #xffffffff b_ack!321)))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!322))
  #x3ff0000000000000))

(check-sat)
(exit)
