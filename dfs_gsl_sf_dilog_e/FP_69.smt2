(declare-fun a_ack!483 () (_ BitVec 64))
(assert (fp.geq ((_ to_fp 11 53) a_ack!483) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!483) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!483) ((_ to_fp 11 53) #x3ff028f5c28f5c29)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!483)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  (fp.mul roundNearestTiesToEven a!1 a!1)
                                  ((_ to_fp 11 53) #x4028000000000000))
                          ((_ to_fp 11 53) #x4028000000000000))
                  (fp.mul roundNearestTiesToEven a!1 a!1))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!483)))))
(let ((a!2 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  (fp.mul roundNearestTiesToEven a!1 a!1)
                                  ((_ to_fp 11 53) #x4028000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!483)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 (fp.div roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         ((_ to_fp 11 53) #x4028000000000000)))
         ((_ to_fp 11 53) #x4028000000000000))))

(check-sat)
(exit)
