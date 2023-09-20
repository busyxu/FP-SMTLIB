(declare-fun c_ack!269 () (_ BitVec 64))
(declare-fun a_ack!270 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cosh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!268 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!269) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!270 #xffffffff)))
(assert (= #xffffffff a_ack!270))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!269) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!269) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe9884533d43651
  (CF_cosh (fp.mul roundNearestTiesToEven
                   (CF_acos c_ack!269)
                   ((_ to_fp 11 53) b_ack!268)))))

(check-sat)
(exit)
