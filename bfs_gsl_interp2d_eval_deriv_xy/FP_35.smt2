(declare-fun x1_ack!1160 () (_ BitVec 64))
(declare-fun x0_ack!1164 () (_ BitVec 64))
(declare-fun y0_ack!1161 () (_ BitVec 64))
(declare-fun x_ack!1162 () (_ BitVec 64))
(declare-fun y_ack!1163 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1164) ((_ to_fp 11 53) x1_ack!1160))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1161) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1162) ((_ to_fp 11 53) x0_ack!1164))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1162) ((_ to_fp 11 53) x1_ack!1160))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1163) ((_ to_fp 11 53) y0_ack!1161))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1163) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1162) ((_ to_fp 11 53) x0_ack!1164))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1162) ((_ to_fp 11 53) x1_ack!1160)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1163) ((_ to_fp 11 53) y0_ack!1161))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1163) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1160)
                       ((_ to_fp 11 53) x0_ack!1164))
               ((_ to_fp 11 53) x0_ack!1164))
       ((_ to_fp 11 53) x1_ack!1160)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1160)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1160)
                       ((_ to_fp 11 53) x0_ack!1164)))
       ((_ to_fp 11 53) x0_ack!1164)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1161))
               ((_ to_fp 11 53) y0_ack!1161))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1161)))
       ((_ to_fp 11 53) y0_ack!1161)))

(check-sat)
(exit)
