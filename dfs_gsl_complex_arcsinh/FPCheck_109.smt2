(declare-fun x_ack!360 () (_ BitVec 64))
(declare-fun y_ack!359 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!360))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!359)))
                   ((_ to_fp 11 53) #x3ff00000218def1e))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x3fe488ce703afb7f)))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!359)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbff0000000000000)
                                  ((_ to_fp 11 53) y_ack!359)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #xbff0000000000000)
                ((_ to_fp 11 53) y_ack!359))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3ff0000000000000)
                ((_ to_fp 11 53) x_ack!360))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!360)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!359)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #xbff0000000000000 (CF_atan a!2)))))

(check-sat)
(exit)
