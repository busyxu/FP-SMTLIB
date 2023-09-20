(declare-fun x_ack!130 () (_ BitVec 64))
(declare-fun y_ack!129 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!130))
             (fp.abs ((_ to_fp 11 53) y_ack!129)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!130))
                           (fp.abs ((_ to_fp 11 53) y_ack!129)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a!1)))

(check-sat)
(exit)
