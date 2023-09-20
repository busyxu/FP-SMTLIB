(declare-fun h_ack!202 () (_ BitVec 64))
(declare-fun x_ack!203 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!203)
                    ((_ to_fp 11 53) h_ack!202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!203)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!202)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!203)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!202)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000)))
  (FPCHECK_FADD_ACCURACY (fp.abs a!1) (fp.abs a!2))))

(check-sat)
(exit)
