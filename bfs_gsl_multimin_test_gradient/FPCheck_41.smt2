(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun p1_ack!174 () (_ BitVec 64))
(declare-fun x1_ack!175 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  #x0000000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!175)
          ((_ to_fp 11 53) p1_ack!174))))

(check-sat)
(exit)
