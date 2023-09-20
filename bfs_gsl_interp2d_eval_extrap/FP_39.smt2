(declare-fun x1_ack!1457 () (_ BitVec 64))
(declare-fun x0_ack!1461 () (_ BitVec 64))
(declare-fun y0_ack!1458 () (_ BitVec 64))
(declare-fun x_ack!1459 () (_ BitVec 64))
(declare-fun y_ack!1460 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1461) ((_ to_fp 11 53) x1_ack!1457))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1458) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1459) ((_ to_fp 11 53) x0_ack!1461)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1460) ((_ to_fp 11 53) y0_ack!1458))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1460) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1457)
                       ((_ to_fp 11 53) x0_ack!1461))
               ((_ to_fp 11 53) x0_ack!1461))
       ((_ to_fp 11 53) x1_ack!1457)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1457)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1457)
                       ((_ to_fp 11 53) x0_ack!1461)))
       ((_ to_fp 11 53) x0_ack!1461)))

(check-sat)
(exit)
