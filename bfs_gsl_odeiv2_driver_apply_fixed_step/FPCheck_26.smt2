(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!68 () (_ BitVec 64))
(declare-fun h_ack!69 () (_ BitVec 64))
(declare-fun y0_ack!67 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  y0_ack!67
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!69)
                  ((_ to_fp 11 53) #x4018000000000000))
          ((_ to_fp 11 53) y1_ack!68))))

(check-sat)
(exit)
