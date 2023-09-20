(declare-fun y_ack!73 () (_ BitVec 64))
(declare-fun x_ack!74 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!73) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!73)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!73))
                           (fp.abs ((_ to_fp 11 53) y_ack!73)))
                   (fp.abs ((_ to_fp 11 53) y_ack!73)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!73)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!73)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!73))
                           (fp.abs ((_ to_fp 11 53) y_ack!73)))
                   (fp.abs ((_ to_fp 11 53) y_ack!73)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!73)))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) x_ack!74))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe488ce703afb7f)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!74))
            ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
