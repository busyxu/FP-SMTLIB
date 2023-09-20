(declare-fun x1_ack!1427 () (_ BitVec 64))
(declare-fun x0_ack!1431 () (_ BitVec 64))
(declare-fun y0_ack!1428 () (_ BitVec 64))
(declare-fun x_ack!1429 () (_ BitVec 64))
(declare-fun y_ack!1430 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1431) ((_ to_fp 11 53) x1_ack!1427))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1428) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1429) ((_ to_fp 11 53) x0_ack!1431)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1430) ((_ to_fp 11 53) y0_ack!1428)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1427)
                       ((_ to_fp 11 53) x0_ack!1431))
               ((_ to_fp 11 53) x0_ack!1431))
       ((_ to_fp 11 53) x1_ack!1427)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1427)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1427)
                       ((_ to_fp 11 53) x0_ack!1431)))
       ((_ to_fp 11 53) x0_ack!1431)))

(check-sat)
(exit)
