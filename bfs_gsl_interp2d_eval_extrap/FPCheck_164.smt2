(declare-fun x1_ack!1657 () (_ BitVec 64))
(declare-fun x0_ack!1661 () (_ BitVec 64))
(declare-fun y0_ack!1658 () (_ BitVec 64))
(declare-fun x_ack!1659 () (_ BitVec 64))
(declare-fun y_ack!1660 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1661) ((_ to_fp 11 53) x1_ack!1657))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1658) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1659) ((_ to_fp 11 53) x0_ack!1661)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1660) ((_ to_fp 11 53) y0_ack!1658))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1660) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1657)
                       ((_ to_fp 11 53) x0_ack!1661))
               ((_ to_fp 11 53) x0_ack!1661))
       ((_ to_fp 11 53) x1_ack!1657)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1657)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1657)
                       ((_ to_fp 11 53) x0_ack!1661)))
       ((_ to_fp 11 53) x0_ack!1661)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1658))
               ((_ to_fp 11 53) y0_ack!1658))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1658)))
       ((_ to_fp 11 53) y0_ack!1658)))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!1659 x0_ack!1661))

(check-sat)
(exit)
