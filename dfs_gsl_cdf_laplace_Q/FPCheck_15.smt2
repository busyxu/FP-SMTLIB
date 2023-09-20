(declare-fun a_ack!70 () (_ BitVec 64))
(declare-fun x_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!71)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!70)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!71)
                    ((_ to_fp 11 53) a_ack!70))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_exp (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!71)
                                   ((_ to_fp 11 53) a_ack!70))))))
  (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
