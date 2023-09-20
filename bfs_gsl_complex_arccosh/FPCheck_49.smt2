(declare-fun y_ack!183 () (_ BitVec 64))
(declare-fun x_ack!184 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
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
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) x_ack!184))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe488ce703afb7f)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!184))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!184))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) x_ack!184))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!183))
                           (fp.abs ((_ to_fp 11 53) y_ack!183)))
                   a!1))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!183))
                           (fp.abs ((_ to_fp 11 53) y_ack!183)))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven a!2 a!4))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FINVALID_SQRT a!5 a!5)))))

(check-sat)
(exit)
