(declare-fun x1_ack!1502 () (_ BitVec 64))
(declare-fun x0_ack!1506 () (_ BitVec 64))
(declare-fun y0_ack!1503 () (_ BitVec 64))
(declare-fun x_ack!1504 () (_ BitVec 64))
(declare-fun y_ack!1505 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1506) ((_ to_fp 11 53) x1_ack!1502))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1503) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1504) ((_ to_fp 11 53) x0_ack!1506)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1505) ((_ to_fp 11 53) y0_ack!1503))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1505) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1502)
                       ((_ to_fp 11 53) x0_ack!1506))
               ((_ to_fp 11 53) x0_ack!1506))
       ((_ to_fp 11 53) x1_ack!1502)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1502)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1502)
                       ((_ to_fp 11 53) x0_ack!1506)))
       ((_ to_fp 11 53) x0_ack!1506)))

(check-sat)
(exit)
