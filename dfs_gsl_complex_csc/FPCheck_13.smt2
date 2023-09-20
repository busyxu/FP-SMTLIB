(declare-fun y_ack!51 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!52 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven (CF_cos x_ack!52) (CF_sinh y_ack!51))
  #x7fc0000000000000))

(check-sat)
(exit)
