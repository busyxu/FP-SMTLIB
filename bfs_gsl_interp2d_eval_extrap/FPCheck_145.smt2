(declare-fun x1_ack!1482 () (_ BitVec 64))
(declare-fun x0_ack!1486 () (_ BitVec 64))
(declare-fun y0_ack!1483 () (_ BitVec 64))
(declare-fun x_ack!1484 () (_ BitVec 64))
(declare-fun y_ack!1485 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1486) ((_ to_fp 11 53) x1_ack!1482))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1483) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1484) ((_ to_fp 11 53) x0_ack!1486)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1485) ((_ to_fp 11 53) y0_ack!1483))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1485) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1482)
                       ((_ to_fp 11 53) x0_ack!1486))
               ((_ to_fp 11 53) x0_ack!1486))
       ((_ to_fp 11 53) x1_ack!1482)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1482)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1482)
                       ((_ to_fp 11 53) x0_ack!1486)))
       ((_ to_fp 11 53) x0_ack!1486)))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!1484 x0_ack!1486))

(check-sat)
(exit)
