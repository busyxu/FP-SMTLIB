(declare-fun b_ack!1122 () (_ BitVec 32))
(declare-fun a_ack!1124 () (_ BitVec 32))
(declare-fun c_ack!1123 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1122 #x00000000)))
(assert (not (bvslt a_ack!1124 b_ack!1122)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1123) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1123) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1122)))
(assert (= #x00000000 b_ack!1122))
(assert (not (= a_ack!1124 b_ack!1122)))
(assert (not (= a_ack!1124 (bvadd #x00000001 b_ack!1122))))
(assert (bvsle (bvadd #x00000002 b_ack!1122) a_ack!1124))
(assert (bvsle (bvadd #x00000003 b_ack!1122) a_ack!1124))
(assert (bvsle (bvadd #x00000004 b_ack!1122) a_ack!1124))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (bvadd #x00000004 b_ack!1122 b_ack!1122))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
