(declare-fun x_ack!202 () (_ BitVec 64))
(declare-fun y_ack!201 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!202) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!202))
        (fp.abs ((_ to_fp 11 53) y_ack!201))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!201))
                           (fp.abs ((_ to_fp 11 53) x_ack!202)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!201))
                           (fp.abs ((_ to_fp 11 53) x_ack!202))))))
  (FPCHECK_FADD_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
