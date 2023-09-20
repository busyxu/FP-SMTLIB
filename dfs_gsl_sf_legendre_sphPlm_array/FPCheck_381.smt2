(declare-fun b_ack!1959 () (_ BitVec 32))
(declare-fun a_ack!1961 () (_ BitVec 32))
(declare-fun c_ack!1960 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!1959 #x00000000)))
(assert (not (bvslt a_ack!1961 b_ack!1959)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1960) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1960) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1959)))
(assert (= #x00000000 b_ack!1959))
(assert (not (= a_ack!1961 b_ack!1959)))
(assert (not (= a_ack!1961 (bvadd #x00000001 b_ack!1959))))
(assert (bvsle (bvadd #x00000002 b_ack!1959) a_ack!1961))
(assert (bvsle (bvadd #x00000003 b_ack!1959) a_ack!1961))
(assert (bvsle (bvadd #x00000004 b_ack!1959) a_ack!1961))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (bvadd #x00000004 b_ack!1959 b_ack!1959))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
