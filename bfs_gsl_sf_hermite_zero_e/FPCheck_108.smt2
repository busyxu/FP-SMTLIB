(declare-fun a_ack!466 () (_ BitVec 32))
(declare-fun b_ack!465 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvsle a_ack!466 #x00000000)))
(assert (not (bvslt b_ack!465 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!466 #x00000002) b_ack!465)))
(assert (not (= #x00000000 b_ack!465)))
(assert (not (= #x00000002 a_ack!466)))
(assert (not (bvslt a_ack!466 #x00000015)))
(assert (not (= #x00000001 b_ack!465)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!466 #x00000002) b_ack!465))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!466 #x00000002) b_ack!465)))))
  (not (bvult a!1 #x0000000000000065))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvsub (bvsdiv a_ack!466 #x00000002) b_ack!465)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff2d97c7f3321d2)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW a!2 a!2))))

(check-sat)
(exit)
