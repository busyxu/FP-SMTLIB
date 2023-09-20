(declare-fun b_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cosh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!36 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!35) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!35) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe9884533d43651
  (CF_cosh (fp.mul roundNearestTiesToEven
                   (CF_acos b_ack!35)
                   ((_ to_fp 11 53) a_ack!36)))))

(check-sat)
(exit)
