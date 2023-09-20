(declare-fun x1_ack!1302 () (_ BitVec 64))
(declare-fun x0_ack!1306 () (_ BitVec 64))
(declare-fun y0_ack!1303 () (_ BitVec 64))
(declare-fun x_ack!1304 () (_ BitVec 64))
(declare-fun y_ack!1305 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1306) ((_ to_fp 11 53) x1_ack!1302))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1303) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1304) ((_ to_fp 11 53) x0_ack!1306))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1304) ((_ to_fp 11 53) x1_ack!1302))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1305) ((_ to_fp 11 53) y0_ack!1303))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1305) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1302)
                       ((_ to_fp 11 53) x0_ack!1306))
               ((_ to_fp 11 53) x0_ack!1306))
       ((_ to_fp 11 53) x1_ack!1302)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1302)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1302)
                       ((_ to_fp 11 53) x0_ack!1306)))
       ((_ to_fp 11 53) x0_ack!1306)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1303))
               ((_ to_fp 11 53) y0_ack!1303))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1303)))
       ((_ to_fp 11 53) y0_ack!1303)))
(assert (FPCHECK_FSUB_OVERFLOW y_ack!1305 y0_ack!1303))

(check-sat)
(exit)
