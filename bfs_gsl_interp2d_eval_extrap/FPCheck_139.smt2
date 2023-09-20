(declare-fun x1_ack!1432 () (_ BitVec 64))
(declare-fun x0_ack!1436 () (_ BitVec 64))
(declare-fun y0_ack!1433 () (_ BitVec 64))
(declare-fun x_ack!1434 () (_ BitVec 64))
(declare-fun y_ack!1435 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1436) ((_ to_fp 11 53) x1_ack!1432))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1433) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1434) ((_ to_fp 11 53) x0_ack!1436)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1435) ((_ to_fp 11 53) y0_ack!1433)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1432)
                       ((_ to_fp 11 53) x0_ack!1436))
               ((_ to_fp 11 53) x0_ack!1436))
       ((_ to_fp 11 53) x1_ack!1432)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1432)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1432)
                       ((_ to_fp 11 53) x0_ack!1436)))
       ((_ to_fp 11 53) x0_ack!1436)))
(assert (FPCHECK_FSUB_OVERFLOW y_ack!1435 y0_ack!1433))

(check-sat)
(exit)
