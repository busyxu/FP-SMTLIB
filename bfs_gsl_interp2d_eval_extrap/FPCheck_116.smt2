(declare-fun x1_ack!1207 () (_ BitVec 64))
(declare-fun x0_ack!1211 () (_ BitVec 64))
(declare-fun y0_ack!1208 () (_ BitVec 64))
(declare-fun x_ack!1209 () (_ BitVec 64))
(declare-fun y_ack!1210 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1211) ((_ to_fp 11 53) x1_ack!1207))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1208) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1209) ((_ to_fp 11 53) x0_ack!1211))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1209) ((_ to_fp 11 53) x1_ack!1207))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1210) ((_ to_fp 11 53) y0_ack!1208))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1210) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1207)
                       ((_ to_fp 11 53) x0_ack!1211))
               ((_ to_fp 11 53) x0_ack!1211))
       ((_ to_fp 11 53) x1_ack!1207)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1207)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1207)
                       ((_ to_fp 11 53) x0_ack!1211)))
       ((_ to_fp 11 53) x0_ack!1211)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!1208))

(check-sat)
(exit)
