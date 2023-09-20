(declare-fun c_ack!1464 () (_ BitVec 64))
(declare-fun a_ack!1465 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1463 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1464) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1465 #xffffffff)))
(assert (= #xffffffff a_ack!1465))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1464) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1464) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1464) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1463)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1464)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f20000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1463)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1464)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (FPCHECK_FSUB_UNDERFLOW
    (CF_floor (fp.div roundNearestTiesToEven
                      (fp.abs a!1)
                      ((_ to_fp 11 53) #x3fe921fb54442d18)))
    #x7ff8000000000001)))

(check-sat)
(exit)
