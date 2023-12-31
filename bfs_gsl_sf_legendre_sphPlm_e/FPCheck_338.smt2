(declare-fun b_ack!1596 () (_ BitVec 32))
(declare-fun a_ack!1598 () (_ BitVec 32))
(declare-fun c_ack!1597 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1596 #x00000000)))
(assert (not (bvslt a_ack!1598 b_ack!1596)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1597) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1597) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!1596))
(assert (not (bvslt a_ack!1598 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1597) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1597) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!1598)))
(assert (not (= #x00000001 a_ack!1598)))
(assert (not (= #x00000002 a_ack!1598)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1597) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1597) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!1598 #x000186a0))
(assert (bvsle #x00000002 a_ack!1598))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1597)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) c_ack!1597))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_ACCURACY a!1 #x4000000000000000)))

(check-sat)
(exit)
