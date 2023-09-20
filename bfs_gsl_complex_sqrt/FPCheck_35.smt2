(declare-fun x_ack!96 () (_ BitVec 64))
(declare-fun y_ack!95 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!96)) (fp.abs ((_ to_fp 11 53) y_ack!95))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!95))
                           (fp.abs ((_ to_fp 11 53) x_ack!96)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!95))
                           (fp.abs ((_ to_fp 11 53) x_ack!96))))))
  (FPCHECK_FINVALID_SQRT
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
