(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y1_ack!235 () (_ BitVec 64))
(declare-fun h_ack!236 () (_ BitVec 64))
(declare-fun y0_ack!234 () (_ BitVec 64))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!234)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!236))
                           ((_ to_fp 11 53) y1_ack!235)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!1 a!1)
    #x3ff0000000000000)))

(check-sat)
(exit)
