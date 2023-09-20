(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!190 () (_ BitVec 64))
(declare-fun h_ack!191 () (_ BitVec 64))
(declare-fun y0_ack!189 () (_ BitVec 64))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!189)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!191))
                           ((_ to_fp 11 53) y1_ack!190)))))
  (FPCHECK_FSUB_ACCURACY #x8000000000000000 a!1)))

(check-sat)
(exit)
