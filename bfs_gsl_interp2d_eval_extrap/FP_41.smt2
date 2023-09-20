(declare-fun x1_ack!1557 () (_ BitVec 64))
(declare-fun x0_ack!1561 () (_ BitVec 64))
(declare-fun y0_ack!1558 () (_ BitVec 64))
(declare-fun x_ack!1559 () (_ BitVec 64))
(declare-fun y_ack!1560 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1561) ((_ to_fp 11 53) x1_ack!1557))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1558) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1559) ((_ to_fp 11 53) x0_ack!1561)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1560) ((_ to_fp 11 53) y0_ack!1558))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1560) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1557)
                       ((_ to_fp 11 53) x0_ack!1561))
               ((_ to_fp 11 53) x0_ack!1561))
       ((_ to_fp 11 53) x1_ack!1557)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1557)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1557)
                       ((_ to_fp 11 53) x0_ack!1561)))
       ((_ to_fp 11 53) x0_ack!1561)))

(check-sat)
(exit)
