(declare-fun y_ack!141 () (_ BitVec 64))
(declare-fun x_ack!142 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!141)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!141))
                           (fp.abs ((_ to_fp 11 53) y_ack!141)))
                   (fp.abs ((_ to_fp 11 53) y_ack!141)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!141)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!141)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!141))
                           (fp.abs ((_ to_fp 11 53) y_ack!141)))
                   (fp.abs ((_ to_fp 11 53) y_ack!141)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!141)))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) x_ack!142))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe488ce703afb7f)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!142))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!142))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) x_ack!142))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!141))
                           (fp.abs ((_ to_fp 11 53) y_ack!141)))
                   a!1))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!141))
                           (fp.abs ((_ to_fp 11 53) y_ack!141)))
                   a!3)))
  (FPCHECK_FMUL_OVERFLOW
    #x3fe0000000000000
    (fp.add roundNearestTiesToEven a!2 a!4)))))

(check-sat)
(exit)
