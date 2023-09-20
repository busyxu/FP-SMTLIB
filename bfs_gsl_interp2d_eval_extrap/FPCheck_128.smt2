(declare-fun x1_ack!1332 () (_ BitVec 64))
(declare-fun x0_ack!1336 () (_ BitVec 64))
(declare-fun y0_ack!1333 () (_ BitVec 64))
(declare-fun x_ack!1334 () (_ BitVec 64))
(declare-fun y_ack!1335 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1336) ((_ to_fp 11 53) x1_ack!1332))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1333) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1334) ((_ to_fp 11 53) x0_ack!1336)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1335) ((_ to_fp 11 53) y0_ack!1333)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1332)
                       ((_ to_fp 11 53) x0_ack!1336))
               ((_ to_fp 11 53) x0_ack!1336))
       ((_ to_fp 11 53) x1_ack!1332)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1332)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1332)
                       ((_ to_fp 11 53) x0_ack!1336)))
       ((_ to_fp 11 53) x0_ack!1336)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 y0_ack!1333))

(check-sat)
(exit)
