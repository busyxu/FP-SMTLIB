(declare-fun a_ack!1100 () (_ BitVec 32))
(declare-fun b_ack!1098 () (_ BitVec 32))
(declare-fun c_ack!1099 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!1100 #x00000000)))
(assert (not (bvslt b_ack!1098 a_ack!1100)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1099) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!1098))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1099) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1099) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1099) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!1099))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #xbff0000000000000))
    #x3ff0000000000000)))

(check-sat)
(exit)
