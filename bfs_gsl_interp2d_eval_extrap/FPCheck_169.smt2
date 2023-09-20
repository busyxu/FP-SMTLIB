(declare-fun x1_ack!1702 () (_ BitVec 64))
(declare-fun x0_ack!1706 () (_ BitVec 64))
(declare-fun y0_ack!1703 () (_ BitVec 64))
(declare-fun x_ack!1704 () (_ BitVec 64))
(declare-fun y_ack!1705 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1706) ((_ to_fp 11 53) x1_ack!1702))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1703) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1704) ((_ to_fp 11 53) x0_ack!1706))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1704) ((_ to_fp 11 53) x1_ack!1702)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1705) ((_ to_fp 11 53) y0_ack!1703)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1702)
                       ((_ to_fp 11 53) x0_ack!1706))
               ((_ to_fp 11 53) x0_ack!1706))
       ((_ to_fp 11 53) x1_ack!1702)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1702)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1702)
                       ((_ to_fp 11 53) x0_ack!1706)))
       ((_ to_fp 11 53) x0_ack!1706)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!1703))

(check-sat)
(exit)
