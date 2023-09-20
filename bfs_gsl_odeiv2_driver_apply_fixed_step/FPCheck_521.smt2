(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!1886 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!1886)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
