(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun x0_ack!22 () (_ BitVec 64))
(declare-fun x1_ack!21 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW
  x1_ack!21
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!22)
          ((_ to_fp 11 53) x0_ack!22))))

(check-sat)
(exit)
