(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!32 () (_ BitVec 64))
(declare-fun a_ack!33 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!33) (CF_sin b_ack!32))
  (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!33) (CF_sin b_ack!32))))

(check-sat)
(exit)
