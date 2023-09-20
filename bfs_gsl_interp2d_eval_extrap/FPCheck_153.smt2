(declare-fun x1_ack!1562 () (_ BitVec 64))
(declare-fun x0_ack!1566 () (_ BitVec 64))
(declare-fun y0_ack!1563 () (_ BitVec 64))
(declare-fun x_ack!1564 () (_ BitVec 64))
(declare-fun y_ack!1565 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1566) ((_ to_fp 11 53) x1_ack!1562))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1563) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1564) ((_ to_fp 11 53) x0_ack!1566)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1565) ((_ to_fp 11 53) y0_ack!1563))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1565) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1562)
                       ((_ to_fp 11 53) x0_ack!1566))
               ((_ to_fp 11 53) x0_ack!1566))
       ((_ to_fp 11 53) x1_ack!1562)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1562)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1562)
                       ((_ to_fp 11 53) x0_ack!1566)))
       ((_ to_fp 11 53) x0_ack!1566)))
(assert (FPCHECK_FSUB_OVERFLOW y_ack!1565 y0_ack!1563))

(check-sat)
(exit)
