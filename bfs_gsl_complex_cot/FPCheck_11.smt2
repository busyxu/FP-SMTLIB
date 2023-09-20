(declare-fun y_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!36 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) y_ack!35))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FINVALID_POW
  (fp.div roundNearestTiesToEven (CF_cos x_ack!36) (CF_sinh y_ack!35))
  (fp.div roundNearestTiesToEven (CF_cos x_ack!36) (CF_sinh y_ack!35))))

(check-sat)
(exit)
