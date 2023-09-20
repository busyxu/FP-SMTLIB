(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!14 () (_ BitVec 64))
(declare-fun a_ack!15 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!15) (CF_cos b_ack!14))
  (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!15) (CF_cos b_ack!14))))

(check-sat)
(exit)
