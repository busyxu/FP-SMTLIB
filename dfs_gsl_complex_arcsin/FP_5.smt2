(declare-fun y_ack!47 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!47)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!47))
                           (fp.abs ((_ to_fp 11 53) y_ack!47)))
                   (fp.abs ((_ to_fp 11 53) y_ack!47)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!47)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!47)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!47))
                           (fp.abs ((_ to_fp 11 53) y_ack!47)))
                   (fp.abs ((_ to_fp 11 53) y_ack!47)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!47)))))

(check-sat)
(exit)
