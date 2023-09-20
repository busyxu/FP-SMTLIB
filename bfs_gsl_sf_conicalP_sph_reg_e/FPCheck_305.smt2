(declare-fun c_ack!1293 () (_ BitVec 64))
(declare-fun a_ack!1294 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1292 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1293) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1294 #xffffffff)))
(assert (= #xffffffff a_ack!1294))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1293) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1293) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1293) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1292)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1293)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1292)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1293)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (CF_sin a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cc0000000000000)
                                   (fp.abs a!1))))))
  (FPCHECK_FADD_ACCURACY a!2 a!3))))

(check-sat)
(exit)
