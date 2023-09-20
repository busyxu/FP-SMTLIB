(declare-fun c_ack!685 () (_ BitVec 64))
(declare-fun a_ack!686 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!684 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!685) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!686 #xffffffff)))
(assert (= #xffffffff a_ack!686))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!685) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!685) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!685) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  b_ack!684
  (CF_log (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!685)
                  ((_ to_fp 11 53) #x3ffbb67ae8584caa)))))

(check-sat)
(exit)
