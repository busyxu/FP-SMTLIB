(declare-fun b_ack!1018 () (_ BitVec 64))
(declare-fun a_ack!1019 () (_ BitVec 32))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1018) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1018) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1019 #x00000000)))
(assert (not (= #x00000000 a_ack!1019)))
(assert (not (= #x00000001 a_ack!1019)))
(assert (bvslt #x000186a0 a_ack!1019))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1018) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (CF_acos b_ack!1018) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1019)
          ((_ to_fp 11 53) #x3fe0000000000000))
  (CF_acos b_ack!1018)))

(check-sat)
(exit)
