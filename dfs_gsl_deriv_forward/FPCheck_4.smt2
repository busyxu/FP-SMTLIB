(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!8 () (_ BitVec 64))
(declare-fun x_ack!9 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW
  x_ack!9
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!8)
          ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
