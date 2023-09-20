(declare-fun c_ack!1218 () (_ BitVec 64))
(declare-fun a_ack!1219 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1217 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1218) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1219 #xffffffff)))
(assert (= #xffffffff a_ack!1219))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1218) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1218) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1218) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1217)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1218)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1217)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1218)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (FPCHECK_FSUB_ACCURACY
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.mul roundNearestTiesToEven a!1 a!1)))))

(check-sat)
(exit)
