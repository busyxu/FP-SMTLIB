(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!37 () (_ BitVec 64))
(declare-fun b_ack!36 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!36)
          ((_ to_fp 11 53) a_ack!37))))

(check-sat)
(exit)
