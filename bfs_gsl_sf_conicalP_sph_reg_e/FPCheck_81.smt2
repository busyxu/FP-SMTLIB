(declare-fun c_ack!260 () (_ BitVec 64))
(declare-fun a_ack!261 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cosh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!259 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!260) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!261 #xffffffff)))
(assert (= #xffffffff a_ack!261))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!260) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!260) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe9884533d43651
  (CF_cosh (fp.mul roundNearestTiesToEven
                   (CF_acos c_ack!260)
                   ((_ to_fp 11 53) b_ack!259)))))

(check-sat)
(exit)
