(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!24 () (_ BitVec 64))
(declare-fun a_ack!25 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!25) (CF_sin b_ack!24))
  (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!25) (CF_sin b_ack!24))))

(check-sat)
(exit)
