(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun d_ack!9 () (_ BitVec 32))
(declare-fun c_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY c_ack!8 ((_ to_fp 11 53) roundNearestTiesToEven d_ack!9)))

(check-sat)
(exit)
