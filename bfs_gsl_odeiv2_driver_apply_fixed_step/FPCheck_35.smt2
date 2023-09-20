(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!98 () (_ BitVec 64))
(declare-fun h_ack!99 () (_ BitVec 64))
(declare-fun y0_ack!97 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  y0_ack!97
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) h_ack!99))
          ((_ to_fp 11 53) y1_ack!98))))

(check-sat)
(exit)
