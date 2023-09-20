(declare-fun a_ack!522 () (_ BitVec 32))
(declare-fun b_ack!521 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvsle a_ack!522 #x00000000)))
(assert (not (bvslt b_ack!521 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!522 #x00000002) b_ack!521)))
(assert (not (= #x00000000 b_ack!521)))
(assert (not (= #x00000002 a_ack!522)))
(assert (not (bvslt a_ack!522 #x00000015)))
(assert (not (= #x00000001 b_ack!521)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!522 #x00000002) b_ack!521))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!522 #x00000002) b_ack!521)))))
  (bvult a!1 #x0000000000000065)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!522 #x00000002) b_ack!521)))))
  (bvult #x0000000000000000 (bvmul #x0000000000000008 a!1))))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!522 #x00000002) b_ack!521)))))
  (bvult (bvmul #x0000000000000008 a!1) #x0000000000000321)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul #x00000002 a_ack!522))
  #x3ff0000000000000))

(check-sat)
(exit)
