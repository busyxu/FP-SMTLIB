(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p0_ack!18 () (_ BitVec 64))
(declare-fun x0_ack!17 () (_ BitVec 64))
(declare-fun p2_ack!16 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  p2_ack!16
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!17)
          ((_ to_fp 11 53) p0_ack!18))))

(check-sat)
(exit)
