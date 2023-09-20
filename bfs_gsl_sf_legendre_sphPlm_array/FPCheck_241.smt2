(declare-fun b_ack!1119 () (_ BitVec 32))
(declare-fun a_ack!1121 () (_ BitVec 32))
(declare-fun c_ack!1120 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!1119 #x00000000)))
(assert (not (bvslt a_ack!1121 b_ack!1119)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1120) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1120) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1119)))
(assert (= #x00000000 b_ack!1119))
(assert (not (= a_ack!1121 b_ack!1119)))
(assert (not (= a_ack!1121 (bvadd #x00000001 b_ack!1119))))
(assert (bvsle (bvadd #x00000002 b_ack!1119) a_ack!1121))
(assert (bvsle (bvadd #x00000003 b_ack!1119) a_ack!1121))
(assert (bvsle (bvadd #x00000004 b_ack!1119) a_ack!1121))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (bvadd #x00000004 b_ack!1119 b_ack!1119))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
