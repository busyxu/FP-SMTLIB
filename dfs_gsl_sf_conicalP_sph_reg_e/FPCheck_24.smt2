(declare-fun c_ack!79 () (_ BitVec 64))
(declare-fun a_ack!80 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!78 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!79) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!80 #xffffffff)))
(assert (not (= #xffffffff a_ack!80)))
(assert (= #x00000000 a_ack!80))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!79) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!79) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!79) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  b_ack!78
  (CF_log (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!79)
                  ((_ to_fp 11 53) #x3ffbb67ae8584caa)))))

(check-sat)
(exit)
