(declare-fun a_ack!46 () (_ BitVec 64))
(declare-fun x_ack!47 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!47)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!46)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!47)
               ((_ to_fp 11 53) a_ack!46))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!47)
                                   ((_ to_fp 11 53) a_ack!46))))))
  (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
