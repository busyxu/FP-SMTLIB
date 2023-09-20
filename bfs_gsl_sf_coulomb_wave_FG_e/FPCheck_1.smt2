(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!5 () (_ BitVec 32))
(declare-fun c_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW
  c_ack!4
  ((_ to_fp 11 53) roundNearestTiesToEven d_ack!5)))

(check-sat)
(exit)
