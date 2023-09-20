(declare-fun x1_ack!1347 () (_ BitVec 64))
(declare-fun x0_ack!1351 () (_ BitVec 64))
(declare-fun y0_ack!1348 () (_ BitVec 64))
(declare-fun x_ack!1349 () (_ BitVec 64))
(declare-fun y_ack!1350 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1351) ((_ to_fp 11 53) x1_ack!1347))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1348) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1349) ((_ to_fp 11 53) x0_ack!1351)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1350) ((_ to_fp 11 53) y0_ack!1348)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1347)
                       ((_ to_fp 11 53) x0_ack!1351))
               ((_ to_fp 11 53) x0_ack!1351))
       ((_ to_fp 11 53) x1_ack!1347)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1347)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1347)
                       ((_ to_fp 11 53) x0_ack!1351)))
       ((_ to_fp 11 53) x0_ack!1351)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!1348))

(check-sat)
(exit)
