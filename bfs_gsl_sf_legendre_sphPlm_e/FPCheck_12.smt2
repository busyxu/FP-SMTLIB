(declare-fun b_ack!54 () (_ BitVec 32))
(declare-fun a_ack!56 () (_ BitVec 32))
(declare-fun c_ack!55 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!54 #x00000000)))
(assert (not (bvslt a_ack!56 b_ack!54)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!55) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!55) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!54)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!55) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!55) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!54)))

(check-sat)
(exit)
