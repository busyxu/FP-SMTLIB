(declare-fun x_ack!546 () (_ BitVec 64))
(declare-fun y_ack!545 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!546))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!545)))
                   ((_ to_fp 11 53) #x3ff00000218def1e))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x3fe488ce703afb7f)))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!545)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbff0000000000000)
                                  ((_ to_fp 11 53) y_ack!545)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #xbff0000000000000)
                     ((_ to_fp 11 53) y_ack!545))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3ff0000000000000)
                ((_ to_fp 11 53) x_ack!546))
        ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
