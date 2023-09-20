(declare-fun x1_ack!1652 () (_ BitVec 64))
(declare-fun x0_ack!1656 () (_ BitVec 64))
(declare-fun y0_ack!1653 () (_ BitVec 64))
(declare-fun x_ack!1654 () (_ BitVec 64))
(declare-fun y_ack!1655 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1656) ((_ to_fp 11 53) x1_ack!1652))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1653) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1654) ((_ to_fp 11 53) x0_ack!1656)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1655) ((_ to_fp 11 53) y0_ack!1653))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1655) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1652)
                       ((_ to_fp 11 53) x0_ack!1656))
               ((_ to_fp 11 53) x0_ack!1656))
       ((_ to_fp 11 53) x1_ack!1652)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1652)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1652)
                       ((_ to_fp 11 53) x0_ack!1656)))
       ((_ to_fp 11 53) x0_ack!1656)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1653))
               ((_ to_fp 11 53) y0_ack!1653))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1653)))
       ((_ to_fp 11 53) y0_ack!1653)))

(check-sat)
(exit)
