(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!395 () (_ BitVec 64))
(declare-fun t_ack!394 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!394
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) h_ack!395))))

(check-sat)
(exit)
