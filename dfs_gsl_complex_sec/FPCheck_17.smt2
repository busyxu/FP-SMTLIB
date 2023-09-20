(declare-fun y_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!57 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!56) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven (CF_cos x_ack!57) (CF_cosh y_ack!56))
  #x3ff0000000000000))

(check-sat)
(exit)
