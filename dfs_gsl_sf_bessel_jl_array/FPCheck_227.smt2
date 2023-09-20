(declare-fun a_ack!925 () (_ BitVec 32))
(declare-fun b_ack!924 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!925 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!925) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!925)))
(assert (not (= #x00000000 a_ack!925)))
(assert (not (= #x00000001 a_ack!925)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!925))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FDIV_ACCURACY a!1 #x4005bf0a8b145769)))

(check-sat)
(exit)
