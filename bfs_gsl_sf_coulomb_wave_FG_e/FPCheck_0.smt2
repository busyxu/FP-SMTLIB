(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun d_ack!1 () (_ BitVec 32))
(declare-fun c_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW c_ack!0 ((_ to_fp 11 53) roundNearestTiesToEven d_ack!1)))

(check-sat)
(exit)
