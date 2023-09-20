(declare-fun a_ack!405 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!405) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!405) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!405) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!405) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4014000000000000))
         (CF_log (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!405)
                         ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x4014000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4039000000000000))
                   ((_ to_fp 11 53) #x4039000000000000))))
  (not (fp.eq a!2
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4039000000000000)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4039000000000000)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x4039000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!1))
    #x4042000000000000)))

(check-sat)
(exit)
