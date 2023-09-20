(declare-fun a_ack!220 () (_ BitVec 32))
(declare-fun b_ack!219 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (bvslt a_ack!220 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!220)))
(assert (not (bvslt a_ack!220 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!220))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!219) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!220))))
(assert (bvslt a_ack!220 #x00000000))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!219))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!219))))))
  (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
