(declare-fun b_ack!142 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!143 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!142) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!142) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!142) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  a_ack!143
  (CF_log (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!142)
                  ((_ to_fp 11 53) #x3ffbb67ae8584caa)))))

(check-sat)
(exit)
