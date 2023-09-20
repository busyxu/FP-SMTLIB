(declare-fun y_ack!80 () (_ BitVec 64))
(declare-fun x_ack!81 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!81)) (fp.abs ((_ to_fp 11 53) y_ack!80))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y_ack!80))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!81))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!80))
          (fp.abs ((_ to_fp 11 53) x_ack!81)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!80))
          (fp.abs ((_ to_fp 11 53) x_ack!81)))))

(check-sat)
(exit)
