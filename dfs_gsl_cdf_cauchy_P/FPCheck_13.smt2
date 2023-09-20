(declare-fun a_ack!58 () (_ BitVec 64))
(declare-fun x_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!59)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!58)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!59)
               ((_ to_fp 11 53) a_ack!58))
       ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_atan (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!59)
                                    ((_ to_fp 11 53) a_ack!58)))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
  (FPCHECK_FADD_ACCURACY #x3fe0000000000000 a!1)))

(check-sat)
(exit)
