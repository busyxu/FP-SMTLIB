(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun p0_ack!12 () (_ BitVec 64))
(declare-fun x0_ack!11 () (_ BitVec 64))
(declare-fun p2_ack!10 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  p2_ack!10
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!11)
          ((_ to_fp 11 53) p0_ack!12))))

(check-sat)
(exit)
