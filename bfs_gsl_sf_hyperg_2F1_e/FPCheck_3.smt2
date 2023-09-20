(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!10 () (_ BitVec 64))
(declare-fun a_ack!12 () (_ BitVec 64))
(declare-fun c_ack!11 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!11)
          ((_ to_fp 11 53) a_ack!12))
  b_ack!10))

(check-sat)
(exit)
