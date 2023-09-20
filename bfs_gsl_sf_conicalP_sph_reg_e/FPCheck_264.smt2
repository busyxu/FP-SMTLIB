(declare-fun c_ack!1050 () (_ BitVec 64))
(declare-fun a_ack!1051 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1050) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1051 #xffffffff)))
(assert (not (= #xffffffff a_ack!1051)))
(assert (not (= #x00000000 a_ack!1051)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1050) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1050) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1050) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1050) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1050)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1050)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
