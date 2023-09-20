(declare-fun x1_ack!1577 () (_ BitVec 64))
(declare-fun x0_ack!1581 () (_ BitVec 64))
(declare-fun y0_ack!1578 () (_ BitVec 64))
(declare-fun x_ack!1579 () (_ BitVec 64))
(declare-fun y_ack!1580 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1581) ((_ to_fp 11 53) x1_ack!1577))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1578) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1579) ((_ to_fp 11 53) x0_ack!1581)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1580) ((_ to_fp 11 53) y0_ack!1578))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1580) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1577)
                       ((_ to_fp 11 53) x0_ack!1581))
               ((_ to_fp 11 53) x0_ack!1581))
       ((_ to_fp 11 53) x1_ack!1577)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1577)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1577)
                       ((_ to_fp 11 53) x0_ack!1581)))
       ((_ to_fp 11 53) x0_ack!1581)))
(assert (FPCHECK_FSUB_ACCURACY y_ack!1580 y0_ack!1578))

(check-sat)
(exit)
