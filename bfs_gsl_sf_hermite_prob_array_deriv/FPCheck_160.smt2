(declare-fun b_ack!945 () (_ BitVec 32))
(declare-fun a_ack!946 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!945 #x00000000)))
(assert (not (bvslt a_ack!946 #x00000000)))
(assert (not (= #x00000000 a_ack!946)))
(assert (not (bvslt b_ack!945 a_ack!946)))
(assert (not (= b_ack!945 a_ack!946)))
(assert (not (= b_ack!945 (bvadd #x00000001 a_ack!946))))
(assert (bvult a_ack!946 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!946)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!946)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!946))
(assert (not (bvslt #x00000001 a_ack!946)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!946))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!946))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!946)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!946)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000001 a_ack!946) (bvadd #xffffffff b_ack!945)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!946)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!946)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000002 a_ack!946) (bvadd #xffffffff b_ack!945)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000002 a_ack!946))
  #x3ff0000000000000))

(check-sat)
(exit)
