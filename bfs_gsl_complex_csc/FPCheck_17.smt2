(declare-fun y_ack!68 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!69 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!68) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven (CF_cos x_ack!69) (CF_sinh y_ack!68))
          ((_ to_fp 11 53) #x7fc0000000000000))))

(check-sat)
(exit)
