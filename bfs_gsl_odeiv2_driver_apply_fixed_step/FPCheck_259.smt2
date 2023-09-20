(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!927 () (_ BitVec 64))
(declare-fun h_ack!928 () (_ BitVec 64))
(declare-fun y0_ack!926 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!928)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) y1_ack!927))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!926) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!926) a!1))))

(check-sat)
(exit)
