(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!178 () (_ BitVec 64))
(declare-fun h_ack!179 () (_ BitVec 64))
(declare-fun y0_ack!177 () (_ BitVec 64))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!177)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!179))
                           ((_ to_fp 11 53) y1_ack!178)))))
  (FPCHECK_FSUB_OVERFLOW #x8000000000000000 a!1)))

(check-sat)
(exit)
