(declare-fun x_ack!58 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!58))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!58))
            ((_ to_fp 11 53) #x3fe5368f08461f9f))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!58)) ((_ to_fp 11 53) #x4016a09e667f3bcd)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e471e703c5f5815)
                           (fp.abs ((_ to_fp 11 53) x_ack!58)))
                   ((_ to_fp 11 53) #x3e471e703c5f5815))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) x_ack!58)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) x_ack!58)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e471e703c5f5815)
                           (fp.abs ((_ to_fp 11 53) x_ack!58)))
                   (fp.abs ((_ to_fp 11 53) x_ack!58)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3e471e703c5f5815))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e471e703c5f5815)
                           (fp.abs ((_ to_fp 11 53) x_ack!58)))
                   ((_ to_fp 11 53) #x3fd98841fadbdc66))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e471e703c5f5815)
                           (fp.abs ((_ to_fp 11 53) x_ack!58))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fd98841fadbdc66)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e471e703c5f5815)
                           (fp.abs ((_ to_fp 11 53) x_ack!58)))
                   ((_ to_fp 11 53) #x3fd98841fadbdc66))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fd98841fadbdc66))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3e471e703c5f5815)
                 (fp.abs ((_ to_fp 11 53) x_ack!58))))))

(check-sat)
(exit)
