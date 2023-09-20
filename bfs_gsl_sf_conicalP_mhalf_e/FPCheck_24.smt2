(declare-fun b_ack!35 () (_ BitVec 64))
(declare-fun a_ack!36 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!35) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!35) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       (CF_acos b_ack!35)
                       ((_ to_fp 11 53) a_ack!36)))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x3fe9884533d43651 (CF_acos b_ack!35)))

(check-sat)
(exit)
