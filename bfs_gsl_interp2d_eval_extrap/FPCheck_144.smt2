(declare-fun x1_ack!1477 () (_ BitVec 64))
(declare-fun x0_ack!1481 () (_ BitVec 64))
(declare-fun y0_ack!1478 () (_ BitVec 64))
(declare-fun x_ack!1479 () (_ BitVec 64))
(declare-fun y_ack!1480 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1481) ((_ to_fp 11 53) x1_ack!1477))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1478) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1479) ((_ to_fp 11 53) x0_ack!1481)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1480) ((_ to_fp 11 53) y0_ack!1478))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1480) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1477)
                       ((_ to_fp 11 53) x0_ack!1481))
               ((_ to_fp 11 53) x0_ack!1481))
       ((_ to_fp 11 53) x1_ack!1477)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1477)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1477)
                       ((_ to_fp 11 53) x0_ack!1481)))
       ((_ to_fp 11 53) x0_ack!1481)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!1478))

(check-sat)
(exit)
