(declare-fun y_ack!19 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) y_ack!19))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fb999999999999a)))))

(check-sat)
(exit)
