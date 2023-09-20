(declare-fun h_ack!262 () (_ BitVec 64))
(declare-fun x_ack!263 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!263)
                    ((_ to_fp 11 53) h_ack!262))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!263)
                                   ((_ to_fp 11 53) h_ack!262))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!263)
                                   ((_ to_fp 11 53) h_ack!262))
                           #x3ff8000000000000))))
  (FPCHECK_FDIV_ZERO
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!1)
    h_ack!262)))

(check-sat)
(exit)
