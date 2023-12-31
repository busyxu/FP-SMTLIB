(declare-fun h_ack!156 () (_ BitVec 64))
(declare-fun x_ack!157 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!157)
                    ((_ to_fp 11 53) h_ack!156))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!157)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!156)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!157)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!156)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!3 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!157)
                                   ((_ to_fp 11 53) h_ack!156))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!157)
                                   ((_ to_fp 11 53) h_ack!156))
                           #x3ff8000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff5555555555555)
            (fp.sub roundNearestTiesToEven a!1 a!2))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fd5555555555555)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    a!3)))))

(check-sat)
(exit)
