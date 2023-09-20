(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!16 () (_ BitVec 64))
(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun c_ack!17 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!17)
          ((_ to_fp 11 53) a_ack!18))
  b_ack!16))

(check-sat)
(exit)
