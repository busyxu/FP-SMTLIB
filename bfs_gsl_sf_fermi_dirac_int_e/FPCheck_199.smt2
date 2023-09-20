(declare-fun a_ack!601 () (_ BitVec 32))
(declare-fun b_ack!600 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!601 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!601)))
(assert (not (bvslt a_ack!601 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!601))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!600) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!601))))
(assert (bvslt a_ack!601 #x00000000))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!600))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!601) #x00000001)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!600))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
