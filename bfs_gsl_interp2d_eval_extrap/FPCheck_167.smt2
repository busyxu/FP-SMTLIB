(declare-fun x1_ack!1687 () (_ BitVec 64))
(declare-fun x0_ack!1691 () (_ BitVec 64))
(declare-fun y0_ack!1688 () (_ BitVec 64))
(declare-fun x_ack!1689 () (_ BitVec 64))
(declare-fun y_ack!1690 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1691) ((_ to_fp 11 53) x1_ack!1687))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1688) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1689) ((_ to_fp 11 53) x0_ack!1691))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1689) ((_ to_fp 11 53) x1_ack!1687)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1690) ((_ to_fp 11 53) y0_ack!1688)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1687)
                       ((_ to_fp 11 53) x0_ack!1691))
               ((_ to_fp 11 53) x0_ack!1691))
       ((_ to_fp 11 53) x1_ack!1687)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1687)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1687)
                       ((_ to_fp 11 53) x0_ack!1691)))
       ((_ to_fp 11 53) x0_ack!1691)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 y0_ack!1688))

(check-sat)
(exit)
