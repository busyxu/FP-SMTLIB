(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!62 () (_ BitVec 64))
(declare-fun h_ack!63 () (_ BitVec 64))
(declare-fun y0_ack!61 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW
  y0_ack!61
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!63)
                  ((_ to_fp 11 53) #x4018000000000000))
          ((_ to_fp 11 53) y1_ack!62))))

(check-sat)
(exit)
