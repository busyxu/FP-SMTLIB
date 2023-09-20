(declare-fun x1_ack!1707 () (_ BitVec 64))
(declare-fun x0_ack!1711 () (_ BitVec 64))
(declare-fun y0_ack!1708 () (_ BitVec 64))
(declare-fun x_ack!1709 () (_ BitVec 64))
(declare-fun y_ack!1710 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1711) ((_ to_fp 11 53) x1_ack!1707))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1708) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1709) ((_ to_fp 11 53) x0_ack!1711))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1709) ((_ to_fp 11 53) x1_ack!1707)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1710) ((_ to_fp 11 53) y0_ack!1708))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1710) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1707)
                       ((_ to_fp 11 53) x0_ack!1711))
               ((_ to_fp 11 53) x0_ack!1711))
       ((_ to_fp 11 53) x1_ack!1707)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1707)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1707)
                       ((_ to_fp 11 53) x0_ack!1711)))
       ((_ to_fp 11 53) x0_ack!1711)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1710)
                       ((_ to_fp 11 53) y0_ack!1708))
               ((_ to_fp 11 53) y0_ack!1708))
       ((_ to_fp 11 53) y_ack!1710)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1710)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1710)
                       ((_ to_fp 11 53) y0_ack!1708)))
       ((_ to_fp 11 53) y0_ack!1708)))

(check-sat)
(exit)
