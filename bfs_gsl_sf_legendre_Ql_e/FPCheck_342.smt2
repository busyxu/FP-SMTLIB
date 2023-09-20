(declare-fun b_ack!1074 () (_ BitVec 64))
(declare-fun a_ack!1075 () (_ BitVec 32))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1074) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1074) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1075 #x00000000)))
(assert (not (= #x00000000 a_ack!1075)))
(assert (not (= #x00000001 a_ack!1075)))
(assert (bvslt #x000186a0 a_ack!1075))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1074) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (CF_acos b_ack!1074) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (CF_acos b_ack!1074)
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1074)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
