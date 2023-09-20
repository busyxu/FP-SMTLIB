(declare-fun y_ack!59 () (_ BitVec 64))
(declare-fun x_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!59) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!59)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!59))
                           (fp.abs ((_ to_fp 11 53) y_ack!59)))
                   (fp.abs ((_ to_fp 11 53) y_ack!59)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!59)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!59)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!59))
                           (fp.abs ((_ to_fp 11 53) y_ack!59)))
                   (fp.abs ((_ to_fp 11 53) y_ack!59)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!59)))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) x_ack!60))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe488ce703afb7f)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!60)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW (fp.abs ((_ to_fp 11 53) x_ack!60)) #x3ff0000000000000))

(check-sat)
(exit)
