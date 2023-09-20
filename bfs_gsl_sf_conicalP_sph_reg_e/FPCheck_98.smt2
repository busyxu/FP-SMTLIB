(declare-fun c_ack!341 () (_ BitVec 64))
(declare-fun a_ack!342 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!340 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!341) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!342 #xffffffff)))
(assert (= #xffffffff a_ack!342))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!341) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!341) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.abs (fp.mul roundNearestTiesToEven
                  (CF_acos c_ack!341)
                  ((_ to_fp 11 53) b_ack!340)))
  #x3ff0000000000000))

(check-sat)
(exit)
