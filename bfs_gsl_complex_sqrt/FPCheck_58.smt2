(declare-fun x_ack!174 () (_ BitVec 64))
(declare-fun y_ack!173 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!174) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!174))
             (fp.abs ((_ to_fp 11 53) y_ack!173)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!174))
                           (fp.abs ((_ to_fp 11 53) y_ack!173)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FINVALID_SQRT
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!1)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!1))))

(check-sat)
(exit)
