(declare-fun b_ack!1104 () (_ BitVec 32))
(declare-fun a_ack!1106 () (_ BitVec 32))
(declare-fun c_ack!1105 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!1104 #x00000000)))
(assert (not (bvslt a_ack!1106 b_ack!1104)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1105) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1105) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1104)))
(assert (= #x00000000 b_ack!1104))
(assert (not (= a_ack!1106 b_ack!1104)))
(assert (not (= a_ack!1106 (bvadd #x00000001 b_ack!1104))))
(assert (bvsle (bvadd #x00000002 b_ack!1104) a_ack!1106))
(assert (bvsle (bvadd #x00000003 b_ack!1104) a_ack!1106))
(assert (bvsle (bvadd #x00000004 b_ack!1104) a_ack!1106))
(assert (FPCHECK_FDIV_ACCURACY
  #x4010000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000004 b_ack!1104 b_ack!1104))))

(check-sat)
(exit)
