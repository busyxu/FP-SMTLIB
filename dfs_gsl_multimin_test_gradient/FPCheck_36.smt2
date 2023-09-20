(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p0_ack!157 () (_ BitVec 64))
(declare-fun x0_ack!156 () (_ BitVec 64))
(declare-fun p2_ack!155 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) p2_ack!155))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!156)
          ((_ to_fp 11 53) p0_ack!157))))

(check-sat)
(exit)
