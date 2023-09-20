(declare-fun a_ack!134 () (_ BitVec 32))
(declare-fun b_ack!133 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvsle a_ack!134 #x00000000)))
(assert (not (bvslt b_ack!133 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!134 #x00000002) b_ack!133)))
(assert (not (= #x00000000 b_ack!133)))
(assert (not (= #x00000002 a_ack!134)))
(assert (not (bvslt a_ack!134 #x00000015)))
(assert (not (= #x00000001 b_ack!133)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!134 #x00000002) b_ack!133))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!134 #x00000002) b_ack!133)))))
  (not (bvult a!1 #x0000000000000065))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvsub (bvsdiv a_ack!134 #x00000002) b_ack!133)))))
  (FPCHECK_FMUL_OVERFLOW #x4010000000000000 a!1)))

(check-sat)
(exit)
