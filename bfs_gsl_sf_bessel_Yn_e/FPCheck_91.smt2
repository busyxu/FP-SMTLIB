(declare-fun a_ack!307 () (_ BitVec 32))
(declare-fun b_ack!306 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (bvslt a_ack!307 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!307) #x00000001))))
(assert (not (= #x00000000 a_ack!307)))
(assert (= #xffffffff a_ack!307))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!306) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!306) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!306) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc0000000000000)
                                   ((_ to_fp 11 53) b_ack!306))
                           ((_ to_fp 11 53) b_ack!306))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW #x4000000000000000 a!1)))

(check-sat)
(exit)
