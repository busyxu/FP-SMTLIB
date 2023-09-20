(declare-fun a_ack!218 () (_ BitVec 32))
(declare-fun b_ack!217 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!218 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!218)))
(assert (not (bvslt a_ack!218 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!218))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!217) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!218))))
(assert (bvslt a_ack!218 #x00000000))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!217))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!217))))))
  (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
