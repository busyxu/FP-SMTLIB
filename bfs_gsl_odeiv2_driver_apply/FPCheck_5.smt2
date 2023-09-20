(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun t_ack!19 () (_ BitVec 64))
(declare-fun t1_ack!18 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!18)
          ((_ to_fp 11 53) t_ack!19))))

(check-sat)
(exit)
