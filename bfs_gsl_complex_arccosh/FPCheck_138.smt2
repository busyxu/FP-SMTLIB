(declare-fun y_ack!479 () (_ BitVec 64))
(declare-fun x_ack!480 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!479) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!479)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!479))
                           (fp.abs ((_ to_fp 11 53) y_ack!479)))
                   (fp.abs ((_ to_fp 11 53) y_ack!479)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!479)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!479)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!479))
                           (fp.abs ((_ to_fp 11 53) y_ack!479)))
                   (fp.abs ((_ to_fp 11 53) y_ack!479)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!479)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!480))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3fe488ce703afb7f))))
  (not a!1)))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) x_ack!480))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!480))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!479) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!479))
                           ((_ to_fp 11 53) #x7ff8000000000001))
                   (fp.abs ((_ to_fp 11 53) x_ack!480)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3ff0000000000000
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x400921fb54442d18)
            (CF_atan a!1)))))

(check-sat)
(exit)
