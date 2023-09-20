(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun p0_ack!21 () (_ BitVec 64))
(declare-fun x0_ack!20 () (_ BitVec 64))
(declare-fun p2_ack!19 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  p2_ack!19
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!20)
          ((_ to_fp 11 53) p0_ack!21))))

(check-sat)
(exit)
