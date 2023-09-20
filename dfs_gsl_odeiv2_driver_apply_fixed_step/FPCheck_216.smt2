(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!764 () (_ BitVec 64))
(declare-fun h_ack!765 () (_ BitVec 64))
(declare-fun y0_ack!763 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!765)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) y1_ack!764))))
  (FPCHECK_FADD_OVERFLOW y0_ack!763 a!1)))

(check-sat)
(exit)
