(declare-fun y_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!43 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!42) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven (CF_sin x_ack!43) (CF_cosh y_ack!42))
          ((_ to_fp 11 53) #x7fc0000000000000))
  #x7fc0000000000000))

(check-sat)
(exit)
