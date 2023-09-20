(declare-fun x1_ack!1622 () (_ BitVec 64))
(declare-fun x0_ack!1626 () (_ BitVec 64))
(declare-fun y0_ack!1623 () (_ BitVec 64))
(declare-fun x_ack!1624 () (_ BitVec 64))
(declare-fun y_ack!1625 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1626) ((_ to_fp 11 53) x1_ack!1622))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1623) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1624) ((_ to_fp 11 53) x0_ack!1626)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1625) ((_ to_fp 11 53) y0_ack!1623))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1625) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1622)
                       ((_ to_fp 11 53) x0_ack!1626))
               ((_ to_fp 11 53) x0_ack!1626))
       ((_ to_fp 11 53) x1_ack!1622)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1622)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1622)
                       ((_ to_fp 11 53) x0_ack!1626)))
       ((_ to_fp 11 53) x0_ack!1626)))

(check-sat)
(exit)
