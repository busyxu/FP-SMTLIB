(declare-fun y_ack!103 () (_ BitVec 64))
(declare-fun x_ack!104 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!103) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) y_ack!103))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!104) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
