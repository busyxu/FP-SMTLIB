(declare-fun x_ack!103 () (_ BitVec 64))
(declare-fun y_ack!102 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x_ack!103) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!102)
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!102)
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff0000000000001)))))
  (fp.lt a!2 ((_ to_fp 11 53) #x3fb999999999999a)))))

(check-sat)
(exit)
