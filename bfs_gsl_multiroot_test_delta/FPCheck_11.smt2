(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x0_ack!24 () (_ BitVec 64))
(declare-fun x1_ack!23 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY
  x1_ack!23
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!24)
          ((_ to_fp 11 53) x0_ack!24))))

(check-sat)
(exit)
