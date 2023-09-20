(declare-fun h_ack!184 () (_ BitVec 64))
(declare-fun x_ack!185 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!185)
                    ((_ to_fp 11 53) h_ack!184))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!185)
                                   ((_ to_fp 11 53) h_ack!184))
                           #x3ff8000000000000)))
      (a!2 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!185)
                                   ((_ to_fp 11 53) h_ack!184))
                           #x3ff8000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.add roundNearestTiesToEven a!1 a!2)
    #x3cb0000000000000)))

(check-sat)
(exit)
