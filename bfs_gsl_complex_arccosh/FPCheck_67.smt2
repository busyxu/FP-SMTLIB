(declare-fun y_ack!255 () (_ BitVec 64))
(declare-fun x_ack!256 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!255) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!255)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!255))
                           (fp.abs ((_ to_fp 11 53) y_ack!255)))
                   (fp.abs ((_ to_fp 11 53) y_ack!255)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!255)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!255)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!255))
                           (fp.abs ((_ to_fp 11 53) y_ack!255)))
                   (fp.abs ((_ to_fp 11 53) y_ack!255)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!255)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!256))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3fe488ce703afb7f))))
  (not a!1)))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) x_ack!256))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) x_ack!256)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_ACCURACY
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.abs ((_ to_fp 11 53) x_ack!256)))
    a!1)))

(check-sat)
(exit)
