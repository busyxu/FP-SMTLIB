(declare-fun x_ack!107 () (_ BitVec 64))
(declare-fun y_ack!106 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x_ack!107) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!106) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!106)
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
