(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!4 () (_ BitVec 64))
(declare-fun x_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW
  x_ack!5
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!4)
          ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
