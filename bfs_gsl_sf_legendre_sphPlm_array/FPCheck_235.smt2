(declare-fun b_ack!1101 () (_ BitVec 32))
(declare-fun a_ack!1103 () (_ BitVec 32))
(declare-fun c_ack!1102 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1101 #x00000000)))
(assert (not (bvslt a_ack!1103 b_ack!1101)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1102) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1102) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1101)))
(assert (= #x00000000 b_ack!1101))
(assert (not (= a_ack!1103 b_ack!1101)))
(assert (not (= a_ack!1103 (bvadd #x00000001 b_ack!1101))))
(assert (bvsle (bvadd #x00000002 b_ack!1101) a_ack!1103))
(assert (bvsle (bvadd #x00000003 b_ack!1101) a_ack!1103))
(assert (bvsle (bvadd #x00000004 b_ack!1101) a_ack!1103))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4010000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000004 b_ack!1101 b_ack!1101))))

(check-sat)
(exit)
