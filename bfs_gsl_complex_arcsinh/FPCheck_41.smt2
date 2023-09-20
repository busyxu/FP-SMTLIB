(declare-fun x_ack!132 () (_ BitVec 64))
(declare-fun y_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!132))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!131)))
                   ((_ to_fp 11 53) #x3ff00000218def1e))))
  (fp.leq a!1 ((_ to_fp 11 53) #x3fe488ce703afb7f))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbff0000000000000)
                       ((_ to_fp 11 53) y_ack!131)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!131))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!131))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!131))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1)
         (fp.abs (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbff0000000000000)
                         ((_ to_fp 11 53) y_ack!131))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!131))))))
  (FPCHECK_FADD_OVERFLOW #x3ff00000218def1e a!1)))

(check-sat)
(exit)
