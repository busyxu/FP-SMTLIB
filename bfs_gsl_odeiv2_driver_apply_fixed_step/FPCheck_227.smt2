(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!805 () (_ BitVec 64))
(declare-fun h_ack!806 () (_ BitVec 64))
(declare-fun y0_ack!804 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!806)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) y1_ack!805))))
  (FPCHECK_FADD_ACCURACY y0_ack!804 a!1)))

(check-sat)
(exit)
