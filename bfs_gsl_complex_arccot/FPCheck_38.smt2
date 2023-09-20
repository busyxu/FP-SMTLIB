(declare-fun x_ack!128 () (_ BitVec 64))
(declare-fun y_ack!127 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!128) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!127) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!127)
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!127)
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff0000000000001)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3fb999999999999a))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!127)
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FADD_ACCURACY a!1 #x3ff0000000000000)))

(check-sat)
(exit)
