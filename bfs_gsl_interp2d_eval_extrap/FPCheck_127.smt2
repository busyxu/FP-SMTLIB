(declare-fun x1_ack!1322 () (_ BitVec 64))
(declare-fun x0_ack!1326 () (_ BitVec 64))
(declare-fun y0_ack!1323 () (_ BitVec 64))
(declare-fun x_ack!1324 () (_ BitVec 64))
(declare-fun y_ack!1325 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1326) ((_ to_fp 11 53) x1_ack!1322))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1323) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1324) ((_ to_fp 11 53) x0_ack!1326))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1324) ((_ to_fp 11 53) x1_ack!1322))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1325) ((_ to_fp 11 53) y0_ack!1323))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1325) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1322)
                       ((_ to_fp 11 53) x0_ack!1326))
               ((_ to_fp 11 53) x0_ack!1326))
       ((_ to_fp 11 53) x1_ack!1322)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1322)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1322)
                       ((_ to_fp 11 53) x0_ack!1326)))
       ((_ to_fp 11 53) x0_ack!1326)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1323))
               ((_ to_fp 11 53) y0_ack!1323))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1323)))
       ((_ to_fp 11 53) y0_ack!1323)))
(assert (FPCHECK_FSUB_ACCURACY y_ack!1325 y0_ack!1323))

(check-sat)
(exit)
