(declare-fun a_ack!569 () (_ BitVec 32))
(declare-fun b_ack!568 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!569 #x00000000)))
(assert (not (= #x00000000 a_ack!569)))
(assert (not (= #x00000001 a_ack!569)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!568) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!568) ((_ to_fp 11 53) #x4014000000000000)))
(assert (bvule (bvadd #xffffffff a_ack!569) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff a_ack!569))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff a_ack!569))))))
  (bvult a!1 #x0000000000001001)))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvsub #x00000000 a_ack!569))
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) b_ack!568)))))

(check-sat)
(exit)
