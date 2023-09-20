(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!56 () (_ BitVec 64))
(declare-fun h_ack!57 () (_ BitVec 64))
(declare-fun y0_ack!55 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW
  y0_ack!55
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!57)
                  ((_ to_fp 11 53) #x4018000000000000))
          ((_ to_fp 11 53) y1_ack!56))))

(check-sat)
(exit)
