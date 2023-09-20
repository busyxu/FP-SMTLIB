(declare-fun x1_ack!1472 () (_ BitVec 64))
(declare-fun x0_ack!1476 () (_ BitVec 64))
(declare-fun y0_ack!1473 () (_ BitVec 64))
(declare-fun x_ack!1474 () (_ BitVec 64))
(declare-fun y_ack!1475 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1476) ((_ to_fp 11 53) x1_ack!1472))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1473) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1474) ((_ to_fp 11 53) x0_ack!1476)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1475) ((_ to_fp 11 53) y0_ack!1473))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1475) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1472)
                       ((_ to_fp 11 53) x0_ack!1476))
               ((_ to_fp 11 53) x0_ack!1476))
       ((_ to_fp 11 53) x1_ack!1472)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1472)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1472)
                       ((_ to_fp 11 53) x0_ack!1476)))
       ((_ to_fp 11 53) x0_ack!1476)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 y0_ack!1473))

(check-sat)
(exit)
