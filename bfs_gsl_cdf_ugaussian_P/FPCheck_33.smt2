(declare-fun x_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!56))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!56))
            ((_ to_fp 11 53) #x3fe5368f08461f9f))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!56)) ((_ to_fp 11 53) #x4016a09e667f3bcd)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e471e703c5f5815)
                           (fp.abs ((_ to_fp 11 53) x_ack!56)))
                   ((_ to_fp 11 53) #x3e471e703c5f5815))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) x_ack!56)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) x_ack!56)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e471e703c5f5815)
                           (fp.abs ((_ to_fp 11 53) x_ack!56)))
                   (fp.abs ((_ to_fp 11 53) x_ack!56)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3e471e703c5f5815))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3e471e703c5f5815)
          (fp.abs ((_ to_fp 11 53) x_ack!56)))
  #x3fd98841fadbdc66))

(check-sat)
(exit)
