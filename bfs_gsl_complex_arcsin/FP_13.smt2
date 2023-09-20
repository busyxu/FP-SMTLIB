(declare-fun y_ack!183 () (_ BitVec 64))
(declare-fun x_ack!184 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!183) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!183)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!183))
                           (fp.abs ((_ to_fp 11 53) y_ack!183)))
                   (fp.abs ((_ to_fp 11 53) y_ack!183)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!183)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!183)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!183))
                           (fp.abs ((_ to_fp 11 53) y_ack!183)))
                   (fp.abs ((_ to_fp 11 53) y_ack!183)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!183)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!184))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3fe488ce703afb7f))))
  (not a!1)))

(check-sat)
(exit)
