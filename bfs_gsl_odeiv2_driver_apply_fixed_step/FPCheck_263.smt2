(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!951 () (_ BitVec 64))
(declare-fun h_ack!952 () (_ BitVec 64))
(declare-fun y0_ack!950 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!952)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) y1_ack!951))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!950) a!1)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!950) a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)
