(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!399 () (_ BitVec 64))
(declare-fun t_ack!398 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!398
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) h_ack!399))))

(check-sat)
(exit)
