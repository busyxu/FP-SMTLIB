(declare-fun h_ack!120 () (_ BitVec 64))
(declare-fun x_ack!121 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!121)
                    ((_ to_fp 11 53) h_ack!120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!121)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!120)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!121)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!120)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000)))
  (FPCHECK_FSUB_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
